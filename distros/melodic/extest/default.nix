
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-extest";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/nakakura/extest-release/archive/release/melodic/extest/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "5906e54a081617deda9be1e1cd4b7fcd8fe9b4cf0c2f2ee1792da5b5b557b0e7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''control Telubee Head'';
    license = with lib.licenses; [ mit ];
  };
}
