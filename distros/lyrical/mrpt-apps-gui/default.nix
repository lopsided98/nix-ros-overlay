
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-graphslam, mrpt-imgui, mrpt-imgui-vendor, mrpt-kinematics, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-apps-gui";
  version = "3.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/lyrical/mrpt_apps_gui/3.6.2-1.tar.gz";
    name = "3.6.2-1.tar.gz";
    sha256 = "941fd93b568626e3d65de9ad3a8a8d4fdec98c59ff26fd38f88c6944e26c5c37";
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
