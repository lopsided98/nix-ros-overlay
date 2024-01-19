
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-noetic-libntcan";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libntcan/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "d7723026b5cf16ace323ad374e6d327cdbd887cf2735d4aa691322458da20659";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libntcan to use it as a ros dependency.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
