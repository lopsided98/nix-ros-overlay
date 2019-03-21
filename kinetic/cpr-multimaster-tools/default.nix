
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-relay, clock-relay, tf2-relay, multimaster-launch, multimaster-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cpr-multimaster-tools";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/cpr_multimaster_tools/0.0.1-0.tar.gz;
    sha256 = "5eedbb275f29e11aad06c2b301c2788982eea7141a4e0ad23e313ce428a9c4f4";
  };

  propagatedBuildInputs = [ clock-relay tf2-relay multimaster-msgs multimaster-launch message-relay ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master tools for configuration and message relaying'';
    #license = lib.licenses.BSD;
  };
}
