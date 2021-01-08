
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "3b81adfdf45826f8b132b2347517959c461e15a21226a09179779683116e0bfc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for core of rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
