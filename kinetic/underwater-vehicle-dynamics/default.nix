
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, rospy, tf-conversions, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-underwater-vehicle-dynamics";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/underwater_vehicle_dynamics/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "c3e67287546f4b12d9c43ca682b5e78243218614d98939a14cdcf88b0cfb80b1";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf rospy tf-conversions nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf rospy tf-conversions nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An underwater dynamics module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
