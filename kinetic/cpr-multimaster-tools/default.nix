
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-relay, clock-relay, tf2-relay, multimaster-launch, multimaster-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cpr-multimaster-tools";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/cpr_multimaster_tools/0.0.2-1.tar.gz;
    sha256 = "3263f4d958d92d50b4d5b52c16e3c4462a6b9b30e0622e5cfe4774bd699a73cc";
  };

  propagatedBuildInputs = [ message-relay clock-relay tf2-relay multimaster-msgs multimaster-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master tools for configuration and message relaying'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
