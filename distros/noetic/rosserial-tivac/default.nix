
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-tivac";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_tivac/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "b40247b60c3edeccee585a0ffa6ddc1b637c52c338c74fb786b5181d623c352f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for TivaC Launchpad evaluation boards.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
