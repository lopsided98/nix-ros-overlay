
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-cmake, sensor-msgs, catkin, nav-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rdl-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_msgs/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "79db3bb1a9162e6d39b83c3c2ce1101d65ec77fa2fa4260e0b72faf42a577bcc";
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
