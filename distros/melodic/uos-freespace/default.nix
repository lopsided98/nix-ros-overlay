
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-uos-freespace";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_freespace/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3564c0d97b94ca9fba2a23a4f35d699d491bbd796883f11fa14cc07607f9933b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_freespace package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
