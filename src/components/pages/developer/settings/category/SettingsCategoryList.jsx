import React from "react";
import { FaEdit, FaNotesMedical, FaArchive } from "react-icons/fa";
import TableLoading from "../../../../partials/spinners/TableLoading";
import ServerError from "../../../../partials/ServerError";
import FetchingSpinner from "../../../../partials/spinners/FetchingSpinner";

const SettingsCategoryList = () => {
  const [isLoaded, setIsLoaded] = React.useState(false);

  //   React.useEffect(() => {
  //     setTimeout(() => {
  //       setIsLoaded(true);
  //     }, 3000);
  //   }, []);
  return (
    <>
      <div className="relative rounded-md overflow-auto z-0">
        <FetchingSpinner />
        <div className="overflow-auto max-h-[70dvh]">
          <table>
            <thead>
              <tr>
                <th className="w-[3rem]">#</th>
                <th className="w-[3rem]">Status</th>
                <th className="w-[15rem]">Name</th>
                <th className="w-[15rem]">Description</th>
                <th colSpan="100%"></th>
              </tr>
            </thead>
            <tbody>
              {/* {isLoaded === false ? ( */}
              <tr className="text-center">
                <td colSpan="100%">
                  <TableLoading cols={2} count={20} />
                </td>
              </tr>
              <tr className="text-center">
                <td colSpan="100%">
                  <ServerError />
                </td>
              </tr>
              {/* ) : ( */}
              <>
                <tr>
                  <td>1.</td>
                  <td className="text-green-900">ACTIVE</td>
                  <td>Feeding Program</td>
                  <td className="truncate">
                    Weekly Community Development Prog...
                  </td>
                  <div className="flex mt-3 gap-3 justify-end mr-10">
                    <button
                      type="button"
                      className=" tooltip-action-table"
                      data-tooltip="Edit"
                    >
                      <FaEdit />
                    </button>
                    <button
                      type="button"
                      className=" tooltip-action-table"
                      data-tooltip="Archive"
                    >
                      <FaArchive />
                    </button>
                  </div>
                </tr>

                <tr>
                  <td>2.</td>
                  <td className="text-green-900">ACTIVE</td>
                  <td>General Giving</td>
                  <td className="truncate">
                    Give Unrestricted Gifts That Allows Frontl...
                  </td>
                  <div className="flex mt-3 gap-3 justify-end mr-10">
                    <button
                      type="button"
                      className=" tooltip-action-table"
                      data-tooltip="Edit"
                    >
                      <FaEdit />
                    </button>
                    <button
                      type="button"
                      className=" tooltip-action-table"
                      data-tooltip="Archive"
                    >
                      <FaArchive />
                    </button>
                  </div>
                </tr>

                <tr>
                  <td>3.</td>
                  <td className="text-green-900">ACTIVE</td>
                  <td>Sponsorship</td>
                  <td>Sponsorship</td>
                  <div className="flex mt-3 gap-3 justify-end mr-10">
                    <button
                      type="button"
                      className=" tooltip-action-table"
                      data-tooltip="Edit"
                    >
                      <FaEdit />
                    </button>
                    <button
                      type="button"
                      className=" tooltip-action-table"
                      data-tooltip="Archive"
                    >
                      <FaArchive />
                    </button>
                  </div>
                </tr>
              </>
              {/* )} */}
            </tbody>
          </table>
        </div>
      </div>
    </>
  );
};

export default SettingsCategoryList;
