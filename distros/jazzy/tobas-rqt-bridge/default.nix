
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, tobas-constants, tobas-msgs-adapter, tobas-path-tools, tobas-real-common, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rqt-bridge";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rqt_bridge/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "3e0c797262942f25227b351350f4a240bfc914c9f7c7d5b5d5b97de27e616177";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt5.qtbase tobas-constants tobas-msgs-adapter tobas-path-tools tobas-real-common tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt signal bridge for delivering Tobas ROS 2 messages to GUI applications.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
