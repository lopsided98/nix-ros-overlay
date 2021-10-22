
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-description";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_description/0.6.1-2/bota_driver-release-release-noetic-rokubimini_description-0.6.1-2.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_description-0.6.1-2.tar.gz";
    sha256 = "dd660bfd5bad54b0c7c76a041109fc63b3709c3490db1884b04e1d80ee6bf042";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
