
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, sensor-msgs, catkin, nav-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rdl-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/melodic/rdl_msgs/3.2.0-1";
    name = "archive.tar.gz";
    sha256 = "338e4d203d43511f7232d2528f44364d36c739eb86f5de1b791e68ea2e9273d2";
  };

  buildType = "catkin";
  buildInputs = [ rdl-cmake sensor-msgs nav-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs nav-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom msgs for rdl types'';
    license = with lib.licenses; [ "zlib" ];
  };
}
