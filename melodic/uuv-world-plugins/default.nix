
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-dev }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_plugins/0.6.10-0.tar.gz;
    sha256 = "11734081b68d909b9061a8569ba8a9d480dfc05785c1fe34fdfe4ad118c1adbc";
  };

  propagatedBuildInputs = [ gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin gazebo-msgs gazebo-dev ];

  meta = {
    description = ''The uuv_world_plugins package'';
    #license = lib.licenses.Apache-2.0;
  };
}
