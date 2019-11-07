
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-gps-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/dashing/gps_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4fe3791eeb3eb456433182f7dac539fe96e6d617dc5567c6533a1174ff1b7fde";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''GPS messages for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
