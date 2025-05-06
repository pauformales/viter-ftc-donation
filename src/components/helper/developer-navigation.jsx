import { FaCogs } from "react-icons/fa";
import { FaChildren, FaHandHoldingHeart, FaList } from "react-icons/fa6";

export const developerNavigation = [
  {
    name: "Donor List",
    link: "/donor",
    code: "donor",
    icon: <FaHandHoldingHeart />,
  },
  {
    name: "Children List",
    link: "/children-list",
    code: "children-list",
    icon: <FaChildren />,
  },
  {
    name: "Reports",
    link: "/reports",
    code: "reports",
    icon: <FaList />,
    isDropDown: true,
    subMenu: [
      {
        name: "donation",
        code: "donation",
        link: "/donation",
      },
    ],
  },
  {
    name: "Settings",
    icon: <FaCogs />,
    code: "settings",
    isDropDown: true,
    subMenu: [
      {
        name: "users",
        code: "users",
        link: "/users",
      },
      {
        name: "general",
        code: "general",
        link: "/general",
      },
      {
        name: "category",
        code: "category",
        link: "/category",
      },
      {
        name: "designation",
        code: "designation",
        link: "/designation",
      },
      {
        name: "notification",
        code: "notification",
        link: "/notification",
      },
      {
        name: "maintenance",
        code: "maintenance",
        link: "/maintenance",
      },
    ],
  },
];
