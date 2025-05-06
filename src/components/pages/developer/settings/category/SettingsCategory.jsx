import React from "react";
import Header from "../../../../partials/Header";
import Navigation from "../../Navigation";
import Footer from "../../../../partials/Footer";
import BreadCrumbs from "../../../../partials/BreadCrumbs";
import { FaPlus } from "react-icons/fa6";
import SettingsCategoryList from "./SettingsCategoryList";

const SettingsCategory = () => {
  return (
    <>
      <Header />
      <Navigation menu="settings" subMenu="category" />
      <div className="wrapper">
        {/* BREADCRUMBS OR ADD BUTTON */}
        <div className="flex items-center justify-between py-2">
          <BreadCrumbs />
          <button
            type="button"
            className="flex items-center gap-x-3 text-primary hover:underline text-sm font-semibold"
          >
            <FaPlus /> <span>Add</span>
          </button>
        </div>

        {/* CONTENT */}
        <div className="pb-8">
          <h2 className="text-base">Category</h2>
          <SettingsCategoryList />
        </div>

        {/* FOOTER */}
        <Footer />
      </div>
    </>
  );
};

export default SettingsCategory;
