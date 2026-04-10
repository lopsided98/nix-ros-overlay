
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-hw-interfaces, nebula-sample-common }:
buildRosPackage {
  pname = "ros-humble-nebula-sample-hw-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_sample_hw_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0b15cb40a6a43e73bf9ebe3534e4621bc7a36fd7a0fcc9fea1fdfff385ed125e";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-hw-interfaces nebula-sample-common ];
  nativeBuildInputs = [ autoware-cmake ];

  meta = {
    description = "Nebula Sample HW Interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
