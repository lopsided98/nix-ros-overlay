
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-point-cloud-publisher-tutorial";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/point_cloud_publisher_tutorial/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "f7cacd1a860ecf30ebb011da43d04f9992cf1cfed04b8ff1e5b6d1ccb55f0680";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The point_cloud_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
