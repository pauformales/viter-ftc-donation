import { useState } from "react";
import { Route, BrowserRouter as Router, Routes } from "react-router-dom";
import SettingsCategory from "./components/pages/developer/settings/category/SettingsCategory";

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
      <Router>
        <Routes>
          <Route
            path="*"
            element={
              <div className="h-dvh w-dvh flex items-center justify-center">
                <h3>Page Not Found.</h3>
              </div>
            }
          />
          <Route path="/setting/category" element={<SettingsCategory />} />
        </Routes>
      </Router>
    </>
  );
}

export default App;
