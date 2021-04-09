
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-description";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_description/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_description-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_description-0.5.9-2.tar.gz";
    sha256 = "9fe05eb37afc2ba896205e99061e7f6aff6f7b9048bd06026f49f21364eff292";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
