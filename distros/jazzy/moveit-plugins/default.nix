
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-jazzy-moveit-plugins";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_plugins/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "6cfc5989d6ada4584a585bbf37db9966ec2f21f0b54b934a16b27dfbe6fc6b7a";
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
