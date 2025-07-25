
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, kdl-parser, nlopt, pkg-config, rclcpp, urdf }:
buildRosPackage {
  pname = "ros-kilted-trac-ik-lib";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/kilted/trac_ik_lib/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "bf06793f7fba044960fb3a81b4591427703392da231bcf070792b01314cfe5dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs kdl-parser nlopt pkg-config rclcpp urdf ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "TRAC-IK is a faster, significantly more reliable drop-in replacement for
    KDL's pseudoinverse Jacobian solver.

    The TRAC-IK library has a very similar API to KDL's IK solver calls,
    except that the user passes a maximum time instead of a maximum number of
    search iterations.  Additionally, TRAC-IK allows for error tolerances to
    be set independently for each Cartesian dimension (x,y,z,roll,pitch.yaw).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
