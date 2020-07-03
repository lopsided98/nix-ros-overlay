
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-dwb-msgs";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/dwb_msgs/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "4a1d497a219c7460ab31be9836294bf8b4c123e5e8518dd5176032bfe0e6589e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-2d-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
