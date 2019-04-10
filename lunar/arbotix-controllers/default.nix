
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, arbotix-python, trajectory-msgs, tf, catkin }:
buildRosPackage {
  pname = "ros-lunar-arbotix-controllers";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/lunar/arbotix_controllers/0.10.0-0.tar.gz;
    sha256 = "d5365a05f69948af71eeedff1af6204bcdc808688fa4bca90b9175ca8b64a35c";
  };

  propagatedBuildInputs = [ arbotix-python trajectory-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extends the arbotix_python package with a number of more sophisticated ROS wrappers for common devices.'';
    #license = lib.licenses.BSD;
  };
}
