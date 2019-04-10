
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, rosserial-client }:
buildRosPackage {
  pname = "ros-lunar-rosserial-tivac";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_tivac/0.7.7-0.tar.gz;
    sha256 = "523c54c036cf87b56a252208c36b3f819cccdfe7e3baed57fb7144a4026db6bd";
  };

  propagatedBuildInputs = [ rosserial-msgs rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for TivaC Launchpad evaluation boards.'';
    #license = lib.licenses.BSD;
  };
}
