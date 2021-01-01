
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, eigen-stl-containers, geometry-msgs, git, libyamlcpp, pkg-config, roscpp, rosflight-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rosflight";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "afe902f6bceec451c52de9fd202de12e740871b41c4de07665d5765ef75561e9";
  };

  buildType = "catkin";
  buildInputs = [ git pkg-config ];
  propagatedBuildInputs = [ boost eigen eigen-stl-containers geometry-msgs libyamlcpp roscpp rosflight-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
