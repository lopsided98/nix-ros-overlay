
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-rolling-moveit-plugins";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_plugins/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "82cef75de5aad2b62d973ef342610f6a19112ad8f354ef08c4041bb1639818f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for MoveIt plugins.";
    license = with lib.licenses; [ bsd3 ];
  };
}
