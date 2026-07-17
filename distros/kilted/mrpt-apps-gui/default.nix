
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mrpt-common, mrpt-graphslam, mrpt-kinematics, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-kilted-mrpt-apps-gui";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_apps_gui/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "cd8e02aac40ccccf8e41518aeb491e01654c8f1bdbd1d2d6de8f637de69ed483";
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
