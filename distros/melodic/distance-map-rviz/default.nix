
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-msgs, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-distance-map-rviz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_rviz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "48414b67479cb1599a9db7e86b79373a418977221e0e95158776496dc5b2b2f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-msgs qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugin for the visualization of ditance maps.'';
    license = with lib.licenses; [ asl20 ];
  };
}
