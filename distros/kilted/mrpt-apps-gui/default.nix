
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-graphslam, mrpt-kinematics, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-kilted-mrpt-apps-gui";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_apps_gui/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e0dee150af6edd599864331c2f1092c6584be3e764eb48ab441d86c1fbcd7422";
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
