
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cpr-common-core-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_common_core-release/archive/release/melodic/cpr_common_core_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "82eeb5aeef199ad8543b8d7f6fe8087caa6fb4ce68936cfa30d96a01c2c5d6fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cpr_common_core_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
