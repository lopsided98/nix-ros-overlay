
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-description";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_description/0.6.0-2/bota_driver-release-release-noetic-rokubimini_description-0.6.0-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_description-0.6.0-2.tar.gz";
    sha256 = "79460eacaf87f24a5d566e5bb3b8365b1fbbcc57767a6410884078240643eb29";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
