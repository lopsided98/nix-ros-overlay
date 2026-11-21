
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-graphslam, mrpt-imgui, mrpt-imgui-vendor, mrpt-kinematics, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-rolling-mrpt-apps-gui";
  version = "3.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_apps_gui/3.6.3-1.tar.gz";
    name = "3.6.3-1.tar.gz";
    sha256 = "1c36bbcd8151db6e0900c1cde5acdf7bd06ded4fb89fef1d558299399cccbf1f";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ glfw3 mrpt-common mrpt-graphslam mrpt-imgui mrpt-imgui-vendor mrpt-kinematics mrpt-libapps-cli mrpt-libapps-gui mrpt-nav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "MRPT graphical user interface applications";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
