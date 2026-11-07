
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, glfw3, mrpt-common, mrpt-graphslam, mrpt-imgui, mrpt-imgui-vendor, mrpt-kinematics, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-apps-gui";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_apps_gui/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "c9e482b91585e071bbf96af3aa557b61dd453dad012da671ba65f5acd4d73eb8";
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
