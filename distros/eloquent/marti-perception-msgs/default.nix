
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-marti-perception-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/eloquent/marti_perception_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ef09ae2a5b306caad6e76a131140d7589d1633fc10fd37b1cb315483a2f4e1cc";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_perception_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
