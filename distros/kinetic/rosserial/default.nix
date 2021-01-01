
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-kinetic-rosserial";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "6606fcce561bf3ed40615081008df3d618038ac9bdcb2b123b35457244af825e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for core of rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
