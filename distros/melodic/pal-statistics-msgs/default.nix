
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pal-statistics-msgs";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/melodic/pal_statistics_msgs/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "ede295cc48b9ffa94006a5b58b768cb20b698d0d37580e927a05052a9b065a10";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Statistics msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
