
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-copernicus-rules";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_rules/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "48795a9fbeb822abda74d770993b82c9a8a58321824c8a048250c84fe2857f29";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_rules package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
