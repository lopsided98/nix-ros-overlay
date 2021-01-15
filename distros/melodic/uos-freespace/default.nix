
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-uos-freespace";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_freespace/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "094436bef80668f6373054bfe27b1da1151870f89a9fb3f1682dbe12289410df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_freespace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
