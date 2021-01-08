
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-uos-freespace";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/kinetic/uos_freespace/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "b71f45dc6130241aa383a580a6daa8b6ee670279aab3e521d758890ba41d3c6b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_freespace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
