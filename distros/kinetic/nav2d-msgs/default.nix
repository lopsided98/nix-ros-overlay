
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav2d-msgs";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_msgs/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "d1aa144fc6c36368221cbb9d59c647bf6d52e4133fc9ba966c8a596a07a4e596";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used for 2D-Navigation.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
