
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, network-interface, roslint }:
buildRosPackage {
  pname = "ros-melodic-ibeo-core";
  version = "2.0.2";

  src = fetchurl {
    url = "https://github.com/astuff/ibeo_core-release/archive/release/melodic/ibeo_core/2.0.2-0.tar.gz";
    name = "2.0.2-0.tar.gz";
    sha256 = "c2ee7a2ea9424ee0c40e44d9cf22ab00bface29f418167a42451c6fae071071b";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ network-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ibeo_core package'';
    license = with lib.licenses; [ mit ];
  };
}
