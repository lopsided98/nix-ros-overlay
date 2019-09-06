
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, sensor-msgs, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-autoware-auto-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_msgs/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "70e17ba0aea69b7d0978c597baa50fb581577a6b8dd0030708b53997c53f9651";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rosidl-default-generators sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces between core Autoware.Auto components'';
    license = with lib.licenses; [ asl20 ];
  };
}
