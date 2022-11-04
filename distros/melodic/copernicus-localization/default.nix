
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-melodic-copernicus-localization";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_localization/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cfc491a7c55762b8ebd73ef2a3161ca650e1b49771e2f97548fe0ef5ab54e539";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_localization package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
