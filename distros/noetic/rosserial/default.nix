
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client, rosserial-msgs, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "7de39c34e3024f4c4e1fccc871932ee0da4c8b8c09a6a9c97c37c53b25e0bc1b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client rosserial-msgs rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for core of rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
