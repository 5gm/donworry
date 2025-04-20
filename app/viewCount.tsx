'use client';

import React, { useState, useEffect } from "react";

const ViewCount: React.FC = () => {
  const [views, setViews] = useState<number>(0);

  // This will run when the component mounts
  useEffect(() => {
    const storedViews = localStorage.getItem("viewCount");
    if (storedViews) {
      setViews(parseInt(storedViews, 10));
    }
  }, []);

  // Update the view count and save it to localStorage
  useEffect(() => {
    if (views > 0) {
      localStorage.setItem("viewCount", views.toString());
    }
  }, [views]);

  const incrementViews = () => setViews(prevViews => prevViews + 1);

  // Call increment when the page loads
  useEffect(() => {
    incrementViews();
  }, []);

  return (
    <div className="view-count">
      <p>View count: {views}</p>
    </div>
  );
};

export default ViewCount;
