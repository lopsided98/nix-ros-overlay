
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, libyamlcpp, git, catkin, eigen-stl-containers, sensor-msgs, pkg-config, roscpp, eigen, std-msgs, tf, geometry-msgs, rosflight-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight/1.0.0-1.tar.gz;
    sha256 = "552f6f958e5b07566c3889f7a535c682d19d876c75bece00c72e656a04ebff77";
  };

  propagatedBuildInputs = [ std-srvs boost libyamlcpp eigen-stl-containers sensor-msgs roscpp eigen std-msgs tf geometry-msgs rosflight-msgs ];
  nativeBuildInputs = [ std-srvs boost libyamlcpp git eigen-stl-containers sensor-msgs catkin pkg-config roscpp eigen std-msgs tf geometry-msgs rosflight-msgs ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    #license = lib.licenses.BSD;
  };
}
