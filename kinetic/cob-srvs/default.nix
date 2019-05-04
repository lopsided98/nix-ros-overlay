
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-srvs";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_srvs/0.6.11-0.tar.gz;
    sha256 = "173a1b7c997d5469d78c9606da5611be9c492ca16ebe6261ced1a35033777575";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
