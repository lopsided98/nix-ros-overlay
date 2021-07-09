
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros-msgs, nodelet, pluginlib, roscpp, uav-msgs }:
buildRosPackage {
  pname = "ros-melodic-collision-avoidance";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/collision_avoidance/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "67854c2391dba2b93578b89672d7aac1b6ea20c8142e3d480746e301b69f136f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros-msgs nodelet pluginlib roscpp uav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The CollisionAvoidance package'';
    license = with lib.licenses; [ "FreeBSD" ];
  };
}
