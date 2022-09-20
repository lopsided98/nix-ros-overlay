
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rdl-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rdl-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_msgs/3.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "338e4d203d43511f7232d2528f44364d36c739eb86f5de1b791e68ea2e9273d2";
  };

  buildType = "catkin";
  buildInputs = [ catkin rdl-cmake ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom msgs for rdl types'';
    license = with lib.licenses; [ "Zlib" ];
  };
}
