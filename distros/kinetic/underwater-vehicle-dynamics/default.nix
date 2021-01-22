
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rospy, sensor-msgs, std-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-underwater-vehicle-dynamics";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/underwater_vehicle_dynamics/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "c3e67287546f4b12d9c43ca682b5e78243218614d98939a14cdcf88b0cfb80b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rospy sensor-msgs std-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An underwater dynamics module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
