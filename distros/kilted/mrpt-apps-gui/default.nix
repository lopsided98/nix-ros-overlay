
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-graphslam, mrpt-kinematics, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-kilted-mrpt-apps-gui";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_apps_gui/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "c268f7baa8ad06590d4e3768e712e0eff949aa698c7be50d413f431a05c9f64b";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mrpt-common mrpt-graphslam mrpt-kinematics mrpt-libapps-gui mrpt-nav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT graphical user interface applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
