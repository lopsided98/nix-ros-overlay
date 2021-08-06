
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, libfranka, roscpp, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-franka-visualization";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_visualization/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "3505398ec199018247dcce2fd60284336ddf1a6856a939d08e4b70ae9cac4188";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-description libfranka roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
