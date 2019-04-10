
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, cv-bridge, catkin }:
buildRosPackage {
  pname = "ros-lunar-grid-map-cv";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_cv/1.6.1-0.tar.gz;
    sha256 = "005d01820157b78662943bf971146a99cdb3ae60ff67fe3544d1e87985e3c4ce";
  };

  buildInputs = [ grid-map-core filters cv-bridge ];
  propagatedBuildInputs = [ grid-map-core filters cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    #license = lib.licenses.BSD;
  };
}
