
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rdl-cmake, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rdl-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_msgs/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "79db3bb1a9162e6d39b83c3c2ce1101d65ec77fa2fa4260e0b72faf42a577bcc";
  };

  buildType = "catkin";
  buildInputs = [ rdl-cmake ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Custom msgs for rdl types'';
    license = with lib.licenses; [ "zlib" ];
  };
}
