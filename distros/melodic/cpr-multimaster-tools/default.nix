
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clock-relay, message-relay, multimaster-launch, multimaster-msgs, tf2-relay }:
buildRosPackage {
  pname = "ros-melodic-cpr-multimaster-tools";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/cpr_multimaster_tools/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "4146b715489ee0a3271fe50e568ad19197b7f30c51bb7539cdee47cc0b8c5d32";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clock-relay message-relay multimaster-launch multimaster-msgs tf2-relay ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master tools for configuration and message relaying'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
