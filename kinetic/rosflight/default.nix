
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen-stl-containers, sensor-msgs, boost, geometry-msgs, git, rosflight-msgs, std-msgs, std-srvs, tf, catkin, libyamlcpp, eigen, roscpp, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-rosflight";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "552f6f958e5b07566c3889f7a535c682d19d876c75bece00c72e656a04ebff77";
  };

  buildType = "catkin";
  buildInputs = [ git boost eigen-stl-containers geometry-msgs rosflight-msgs sensor-msgs std-msgs std-srvs tf libyamlcpp eigen roscpp pkg-config ];
  propagatedBuildInputs = [ eigen-stl-containers sensor-msgs boost geometry-msgs rosflight-msgs std-msgs std-srvs tf libyamlcpp eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
