
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-graphslam, mrpt-imgui, mrpt-imgui-vendor, mrpt-kinematics, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-kilted-mrpt-apps-gui";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_apps_gui/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "dfedb0199949833064073709831e10518febf6cea67deb8d1d95b5083f5e1651";
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
