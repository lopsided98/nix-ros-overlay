
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-core, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-distance-map-opencv";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/melodic/distance_map_opencv/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "391ef19d3ae55b03cdf3e80337d80a73134c2cd1d7fc93fdaf6474bd5c995ca8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ distance-map-core image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node package of the map_distance project.
    It contains the ROS node that instantiate the
    distance map plugin.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
