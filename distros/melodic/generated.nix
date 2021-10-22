
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 abb = self.callPackage ./abb {};

 abb-driver = self.callPackage ./abb-driver {};

 abb-egm-msgs = self.callPackage ./abb-egm-msgs {};

 abb-irb2400-moveit-config = self.callPackage ./abb-irb2400-moveit-config {};

 abb-irb2400-moveit-plugins = self.callPackage ./abb-irb2400-moveit-plugins {};

 abb-irb2400-support = self.callPackage ./abb-irb2400-support {};

 abb-irb4400-support = self.callPackage ./abb-irb4400-support {};

 abb-irb5400-support = self.callPackage ./abb-irb5400-support {};

 abb-irb6600-support = self.callPackage ./abb-irb6600-support {};

 abb-irb6640-moveit-config = self.callPackage ./abb-irb6640-moveit-config {};

 abb-irb6640-support = self.callPackage ./abb-irb6640-support {};

 abb-rapid-msgs = self.callPackage ./abb-rapid-msgs {};

 abb-rapid-sm-addin-msgs = self.callPackage ./abb-rapid-sm-addin-msgs {};

 abb-resources = self.callPackage ./abb-resources {};

 abb-robot-msgs = self.callPackage ./abb-robot-msgs {};

 abseil-cpp = self.callPackage ./abseil-cpp {};

 acado = self.callPackage ./acado {};

 access-point-control = self.callPackage ./access-point-control {};

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 ackermann-steering-controller = self.callPackage ./ackermann-steering-controller {};

 actionlib = self.callPackage ./actionlib {};

 actionlib-lisp = self.callPackage ./actionlib-lisp {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 actionlib-tutorials = self.callPackage ./actionlib-tutorials {};

 adi-driver = self.callPackage ./adi-driver {};

 agni-tf-tools = self.callPackage ./agni-tf-tools {};

 ainstein-radar = self.callPackage ./ainstein-radar {};

 ainstein-radar-drivers = self.callPackage ./ainstein-radar-drivers {};

 ainstein-radar-filters = self.callPackage ./ainstein-radar-filters {};

 ainstein-radar-gazebo-plugins = self.callPackage ./ainstein-radar-gazebo-plugins {};

 ainstein-radar-msgs = self.callPackage ./ainstein-radar-msgs {};

 ainstein-radar-rviz-plugins = self.callPackage ./ainstein-radar-rviz-plugins {};

 ainstein-radar-tools = self.callPackage ./ainstein-radar-tools {};

 allocators = self.callPackage ./allocators {};

 amcl = self.callPackage ./amcl {};

 angles = self.callPackage ./angles {};

 app-manager = self.callPackage ./app-manager {};

 apriltag = self.callPackage ./apriltag {};

 apriltag-ros = self.callPackage ./apriltag-ros {};

 aques-talk = self.callPackage ./aques-talk {};

 ar-track-alvar = self.callPackage ./ar-track-alvar {};

 ar-track-alvar-msgs = self.callPackage ./ar-track-alvar-msgs {};

 arbotix = self.callPackage ./arbotix {};

 arbotix-controllers = self.callPackage ./arbotix-controllers {};

 arbotix-firmware = self.callPackage ./arbotix-firmware {};

 arbotix-msgs = self.callPackage ./arbotix-msgs {};

 arbotix-python = self.callPackage ./arbotix-python {};

 arbotix-sensors = self.callPackage ./arbotix-sensors {};

 ariles-ros = self.callPackage ./ariles-ros {};

 aruco = self.callPackage ./aruco {};

 aruco-detect = self.callPackage ./aruco-detect {};

 aruco-msgs = self.callPackage ./aruco-msgs {};

 aruco-pose = self.callPackage ./aruco-pose {};

 aruco-ros = self.callPackage ./aruco-ros {};

 asmach = self.callPackage ./asmach {};

 asmach-tutorials = self.callPackage ./asmach-tutorials {};

 asr-msgs = self.callPackage ./asr-msgs {};

 assimp-devel = self.callPackage ./assimp-devel {};

 assisted-teleop = self.callPackage ./assisted-teleop {};

 astuff-sensor-msgs = self.callPackage ./astuff-sensor-msgs {};

 async-comm = self.callPackage ./async-comm {};

 async-web-server-cpp = self.callPackage ./async-web-server-cpp {};

 ati-force-torque = self.callPackage ./ati-force-torque {};

 audibot = self.callPackage ./audibot {};

 audibot-description = self.callPackage ./audibot-description {};

 audibot-gazebo = self.callPackage ./audibot-gazebo {};

 audio-capture = self.callPackage ./audio-capture {};

 audio-common = self.callPackage ./audio-common {};

 audio-common-msgs = self.callPackage ./audio-common-msgs {};

 audio-play = self.callPackage ./audio-play {};

 audio-to-spectrogram = self.callPackage ./audio-to-spectrogram {};

 automotive-autonomy-msgs = self.callPackage ./automotive-autonomy-msgs {};

 automotive-navigation-msgs = self.callPackage ./automotive-navigation-msgs {};

 automotive-platform-msgs = self.callPackage ./automotive-platform-msgs {};

 autoware-can-msgs = self.callPackage ./autoware-can-msgs {};

 autoware-config-msgs = self.callPackage ./autoware-config-msgs {};

 autoware-external-msgs = self.callPackage ./autoware-external-msgs {};

 autoware-lanelet2-msgs = self.callPackage ./autoware-lanelet2-msgs {};

 autoware-map-msgs = self.callPackage ./autoware-map-msgs {};

 autoware-msgs = self.callPackage ./autoware-msgs {};

 autoware-system-msgs = self.callPackage ./autoware-system-msgs {};

 auv-msgs = self.callPackage ./auv-msgs {};

 avt-vimba-camera = self.callPackage ./avt-vimba-camera {};

 aws-common = self.callPackage ./aws-common {};

 aws-robomaker-simulation-ros-pkgs = self.callPackage ./aws-robomaker-simulation-ros-pkgs {};

 aws-ros1-common = self.callPackage ./aws-ros1-common {};

 axis-camera = self.callPackage ./axis-camera {};

 azure-iot-sdk-c = self.callPackage ./azure-iot-sdk-c {};

 backward-ros = self.callPackage ./backward-ros {};

 bagger = self.callPackage ./bagger {};

 baldor = self.callPackage ./baldor {};

 base-local-planner = self.callPackage ./base-local-planner {};

 bayesian-belief-networks = self.callPackage ./bayesian-belief-networks {};

 bcap-core = self.callPackage ./bcap-core {};

 bcap-service = self.callPackage ./bcap-service {};

 bcap-service-test = self.callPackage ./bcap-service-test {};

 behaviortree-cpp = self.callPackage ./behaviortree-cpp {};

 behaviortree-cpp-v3 = self.callPackage ./behaviortree-cpp-v3 {};

 bfl = self.callPackage ./bfl {};

 blender-gazebo = self.callPackage ./blender-gazebo {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 bondpy = self.callPackage ./bondpy {};

 boost-sml = self.callPackage ./boost-sml {};

 bota-driver = self.callPackage ./bota-driver {};

 bota-driver-testing = self.callPackage ./bota-driver-testing {};

 bota-node = self.callPackage ./bota-node {};

 bota-signal-handler = self.callPackage ./bota-signal-handler {};

 bota-worker = self.callPackage ./bota-worker {};

 brics-actuator = self.callPackage ./brics-actuator {};

 calibration = self.callPackage ./calibration {};

 calibration-estimation = self.callPackage ./calibration-estimation {};

 calibration-launch = self.callPackage ./calibration-launch {};

 calibration-msgs = self.callPackage ./calibration-msgs {};

 calibration-setup-helper = self.callPackage ./calibration-setup-helper {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 camera-info-manager-py = self.callPackage ./camera-info-manager-py {};

 camera-umd = self.callPackage ./camera-umd {};

 can-dbc-parser = self.callPackage ./can-dbc-parser {};

 can-msgs = self.callPackage ./can-msgs {};

 canopen-402 = self.callPackage ./canopen-402 {};

 canopen-chain-node = self.callPackage ./canopen-chain-node {};

 canopen-master = self.callPackage ./canopen-master {};

 canopen-motor-node = self.callPackage ./canopen-motor-node {};

 capabilities = self.callPackage ./capabilities {};

 carla-msgs = self.callPackage ./carla-msgs {};

 carrot-planner = self.callPackage ./carrot-planner {};

 cartesian-control-msgs = self.callPackage ./cartesian-control-msgs {};

 cartesian-interface = self.callPackage ./cartesian-interface {};

 cartesian-msgs = self.callPackage ./cartesian-msgs {};

 cartesian-trajectory-controller = self.callPackage ./cartesian-trajectory-controller {};

 cartesian-trajectory-interpolation = self.callPackage ./cartesian-trajectory-interpolation {};

 cartographer = self.callPackage ./cartographer {};

 cartographer-ros = self.callPackage ./cartographer-ros {};

 cartographer-ros-msgs = self.callPackage ./cartographer-ros-msgs {};

 cartographer-rviz = self.callPackage ./cartographer-rviz {};

 catch-ros = self.callPackage ./catch-ros {};

 catkin = self.callPackage ./catkin {};

 catkin-pip = self.callPackage ./catkin-pip {};

 catkin-virtualenv = self.callPackage ./catkin-virtualenv {};

 chaplus-ros = self.callPackage ./chaplus-ros {};

 checkerboard-detector = self.callPackage ./checkerboard-detector {};

 chomp-motion-planner = self.callPackage ./chomp-motion-planner {};

 cis-camera = self.callPackage ./cis-camera {};

 cl-tf = self.callPackage ./cl-tf {};

 cl-tf2 = self.callPackage ./cl-tf2 {};

 cl-transforms = self.callPackage ./cl-transforms {};

 cl-transforms-stamped = self.callPackage ./cl-transforms-stamped {};

 cl-urdf = self.callPackage ./cl-urdf {};

 cl-utils = self.callPackage ./cl-utils {};

 class-loader = self.callPackage ./class-loader {};

 clear-costmap-recovery = self.callPackage ./clear-costmap-recovery {};

 clock-relay = self.callPackage ./clock-relay {};

 cloudwatch-logger = self.callPackage ./cloudwatch-logger {};

 cloudwatch-logs-common = self.callPackage ./cloudwatch-logs-common {};

 cloudwatch-metrics-collector = self.callPackage ./cloudwatch-metrics-collector {};

 cloudwatch-metrics-common = self.callPackage ./cloudwatch-metrics-common {};

 clover = self.callPackage ./clover {};

 clover-blocks = self.callPackage ./clover-blocks {};

 clover-description = self.callPackage ./clover-description {};

 clover-simulation = self.callPackage ./clover-simulation {};

 cmake-modules = self.callPackage ./cmake-modules {};

 cmd-vel-smoother = self.callPackage ./cmd-vel-smoother {};

 cob-3d-mapping-msgs = self.callPackage ./cob-3d-mapping-msgs {};

 cob-actions = self.callPackage ./cob-actions {};

 cob-android = self.callPackage ./cob-android {};

 cob-android-msgs = self.callPackage ./cob-android-msgs {};

 cob-android-resource-server = self.callPackage ./cob-android-resource-server {};

 cob-android-script-server = self.callPackage ./cob-android-script-server {};

 cob-android-settings = self.callPackage ./cob-android-settings {};

 cob-base-controller-utils = self.callPackage ./cob-base-controller-utils {};

 cob-base-drive-chain = self.callPackage ./cob-base-drive-chain {};

 cob-base-velocity-smoother = self.callPackage ./cob-base-velocity-smoother {};

 cob-bms-driver = self.callPackage ./cob-bms-driver {};

 cob-calibration-data = self.callPackage ./cob-calibration-data {};

 cob-cam3d-throttle = self.callPackage ./cob-cam3d-throttle {};

 cob-canopen-motor = self.callPackage ./cob-canopen-motor {};

 cob-cartesian-controller = self.callPackage ./cob-cartesian-controller {};

 cob-collision-monitor = self.callPackage ./cob-collision-monitor {};

 cob-collision-velocity-filter = self.callPackage ./cob-collision-velocity-filter {};

 cob-command-gui = self.callPackage ./cob-command-gui {};

 cob-command-tools = self.callPackage ./cob-command-tools {};

 cob-common = self.callPackage ./cob-common {};

 cob-control = self.callPackage ./cob-control {};

 cob-control-mode-adapter = self.callPackage ./cob-control-mode-adapter {};

 cob-control-msgs = self.callPackage ./cob-control-msgs {};

 cob-dashboard = self.callPackage ./cob-dashboard {};

 cob-default-env-config = self.callPackage ./cob-default-env-config {};

 cob-default-robot-behavior = self.callPackage ./cob-default-robot-behavior {};

 cob-default-robot-config = self.callPackage ./cob-default-robot-config {};

 cob-description = self.callPackage ./cob-description {};

 cob-docker-control = self.callPackage ./cob-docker-control {};

 cob-driver = self.callPackage ./cob-driver {};

 cob-elmo-homing = self.callPackage ./cob-elmo-homing {};

 cob-environments = self.callPackage ./cob-environments {};

 cob-extern = self.callPackage ./cob-extern {};

 cob-footprint-observer = self.callPackage ./cob-footprint-observer {};

 cob-frame-tracker = self.callPackage ./cob-frame-tracker {};

 cob-gazebo-objects = self.callPackage ./cob-gazebo-objects {};

 cob-gazebo-plugins = self.callPackage ./cob-gazebo-plugins {};

 cob-gazebo-ros-control = self.callPackage ./cob-gazebo-ros-control {};

 cob-gazebo-tools = self.callPackage ./cob-gazebo-tools {};

 cob-gazebo-worlds = self.callPackage ./cob-gazebo-worlds {};

 cob-generic-can = self.callPackage ./cob-generic-can {};

 cob-grasp-generation = self.callPackage ./cob-grasp-generation {};

 cob-hand = self.callPackage ./cob-hand {};

 cob-hand-bridge = self.callPackage ./cob-hand-bridge {};

 cob-hardware-config = self.callPackage ./cob-hardware-config {};

 cob-hardware-emulation = self.callPackage ./cob-hardware-emulation {};

 cob-helper-tools = self.callPackage ./cob-helper-tools {};

 cob-image-flip = self.callPackage ./cob-image-flip {};

 cob-interactive-teleop = self.callPackage ./cob-interactive-teleop {};

 cob-light = self.callPackage ./cob-light {};

 cob-linear-nav = self.callPackage ./cob-linear-nav {};

 cob-lookat-action = self.callPackage ./cob-lookat-action {};

 cob-manipulation = self.callPackage ./cob-manipulation {};

 cob-map-accessibility-analysis = self.callPackage ./cob-map-accessibility-analysis {};

 cob-mapping-slam = self.callPackage ./cob-mapping-slam {};

 cob-mecanum-controller = self.callPackage ./cob-mecanum-controller {};

 cob-mimic = self.callPackage ./cob-mimic {};

 cob-model-identifier = self.callPackage ./cob-model-identifier {};

 cob-monitoring = self.callPackage ./cob-monitoring {};

 cob-moveit-bringup = self.callPackage ./cob-moveit-bringup {};

 cob-moveit-config = self.callPackage ./cob-moveit-config {};

 cob-moveit-interface = self.callPackage ./cob-moveit-interface {};

 cob-msgs = self.callPackage ./cob-msgs {};

 cob-navigation = self.callPackage ./cob-navigation {};

 cob-navigation-config = self.callPackage ./cob-navigation-config {};

 cob-navigation-global = self.callPackage ./cob-navigation-global {};

 cob-navigation-local = self.callPackage ./cob-navigation-local {};

 cob-navigation-slam = self.callPackage ./cob-navigation-slam {};

 cob-object-detection-msgs = self.callPackage ./cob-object-detection-msgs {};

 cob-object-detection-visualizer = self.callPackage ./cob-object-detection-visualizer {};

 cob-obstacle-distance = self.callPackage ./cob-obstacle-distance {};

 cob-obstacle-distance-moveit = self.callPackage ./cob-obstacle-distance-moveit {};

 cob-omni-drive-controller = self.callPackage ./cob-omni-drive-controller {};

 cob-perception-common = self.callPackage ./cob-perception-common {};

 cob-perception-msgs = self.callPackage ./cob-perception-msgs {};

 cob-phidget-em-state = self.callPackage ./cob-phidget-em-state {};

 cob-phidget-power-state = self.callPackage ./cob-phidget-power-state {};

 cob-phidgets = self.callPackage ./cob-phidgets {};

 cob-reflector-referencing = self.callPackage ./cob-reflector-referencing {};

 cob-relayboard = self.callPackage ./cob-relayboard {};

 cob-safety-controller = self.callPackage ./cob-safety-controller {};

 cob-scan-unifier = self.callPackage ./cob-scan-unifier {};

 cob-script-server = self.callPackage ./cob-script-server {};

 cob-sick-lms1xx = self.callPackage ./cob-sick-lms1xx {};

 cob-sick-s300 = self.callPackage ./cob-sick-s300 {};

 cob-sound = self.callPackage ./cob-sound {};

 cob-srvs = self.callPackage ./cob-srvs {};

 cob-substitute = self.callPackage ./cob-substitute {};

 cob-supported-robots = self.callPackage ./cob-supported-robots {};

 cob-teleop = self.callPackage ./cob-teleop {};

 cob-trajectory-controller = self.callPackage ./cob-trajectory-controller {};

 cob-tricycle-controller = self.callPackage ./cob-tricycle-controller {};

 cob-twist-controller = self.callPackage ./cob-twist-controller {};

 cob-undercarriage-ctrl = self.callPackage ./cob-undercarriage-ctrl {};

 cob-utilities = self.callPackage ./cob-utilities {};

 cob-vision-utils = self.callPackage ./cob-vision-utils {};

 cob-voltage-control = self.callPackage ./cob-voltage-control {};

 code-coverage = self.callPackage ./code-coverage {};

 codec-image-transport = self.callPackage ./codec-image-transport {};

 color-util = self.callPackage ./color-util {};

 combined-robot-hw = self.callPackage ./combined-robot-hw {};

 combined-robot-hw-tests = self.callPackage ./combined-robot-hw-tests {};

 common-msgs = self.callPackage ./common-msgs {};

 common-tutorials = self.callPackage ./common-tutorials {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 computer-status-msgs = self.callPackage ./computer-status-msgs {};

 concert-msgs = self.callPackage ./concert-msgs {};

 concert-service-msgs = self.callPackage ./concert-service-msgs {};

 concert-workflow-engine-msgs = self.callPackage ./concert-workflow-engine-msgs {};

 contact-states-observer = self.callPackage ./contact-states-observer {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 controller-manager-tests = self.callPackage ./controller-manager-tests {};

 convex-decomposition = self.callPackage ./convex-decomposition {};

 copernicus-base = self.callPackage ./copernicus-base {};

 copernicus-control = self.callPackage ./copernicus-control {};

 copernicus-description = self.callPackage ./copernicus-description {};

 copernicus-localization = self.callPackage ./copernicus-localization {};

 copernicus-msgs = self.callPackage ./copernicus-msgs {};

 copernicus-navigation = self.callPackage ./copernicus-navigation {};

 copernicus-rules = self.callPackage ./copernicus-rules {};

 copernicus-teleoperator = self.callPackage ./copernicus-teleoperator {};

 costmap-2d = self.callPackage ./costmap-2d {};

 costmap-converter = self.callPackage ./costmap-converter {};

 costmap-cspace = self.callPackage ./costmap-cspace {};

 costmap-cspace-msgs = self.callPackage ./costmap-cspace-msgs {};

 costmap-queue = self.callPackage ./costmap-queue {};

 costmap-tf-layer = self.callPackage ./costmap-tf-layer {};

 cpp-common = self.callPackage ./cpp-common {};

 cpr-common-core-msgs = self.callPackage ./cpr-common-core-msgs {};

 cpr-multimaster-tools = self.callPackage ./cpr-multimaster-tools {};

 cpu-temperature-diagnostics = self.callPackage ./cpu-temperature-diagnostics {};

 criutils = self.callPackage ./criutils {};

 csm = self.callPackage ./csm {};

 cv-bridge = self.callPackage ./cv-bridge {};

 cv-camera = self.callPackage ./cv-camera {};

 dataflow-lite = self.callPackage ./dataflow-lite {};

 dataspeed-can = self.callPackage ./dataspeed-can {};

 dataspeed-can-msg-filters = self.callPackage ./dataspeed-can-msg-filters {};

 dataspeed-can-tools = self.callPackage ./dataspeed-can-tools {};

 dataspeed-can-usb = self.callPackage ./dataspeed-can-usb {};

 dataspeed-pds = self.callPackage ./dataspeed-pds {};

 dataspeed-pds-can = self.callPackage ./dataspeed-pds-can {};

 dataspeed-pds-msgs = self.callPackage ./dataspeed-pds-msgs {};

 dataspeed-pds-rqt = self.callPackage ./dataspeed-pds-rqt {};

 dataspeed-pds-scripts = self.callPackage ./dataspeed-pds-scripts {};

 dataspeed-ulc = self.callPackage ./dataspeed-ulc {};

 dataspeed-ulc-can = self.callPackage ./dataspeed-ulc-can {};

 dataspeed-ulc-msgs = self.callPackage ./dataspeed-ulc-msgs {};

 datmo = self.callPackage ./datmo {};

 dbw-fca = self.callPackage ./dbw-fca {};

 dbw-fca-can = self.callPackage ./dbw-fca-can {};

 dbw-fca-description = self.callPackage ./dbw-fca-description {};

 dbw-fca-joystick-demo = self.callPackage ./dbw-fca-joystick-demo {};

 dbw-fca-msgs = self.callPackage ./dbw-fca-msgs {};

 dbw-mkz = self.callPackage ./dbw-mkz {};

 dbw-mkz-can = self.callPackage ./dbw-mkz-can {};

 dbw-mkz-description = self.callPackage ./dbw-mkz-description {};

 dbw-mkz-joystick-demo = self.callPackage ./dbw-mkz-joystick-demo {};

 dbw-mkz-msgs = self.callPackage ./dbw-mkz-msgs {};

 dbw-polaris = self.callPackage ./dbw-polaris {};

 dbw-polaris-can = self.callPackage ./dbw-polaris-can {};

 dbw-polaris-description = self.callPackage ./dbw-polaris-description {};

 dbw-polaris-joystick-demo = self.callPackage ./dbw-polaris-joystick-demo {};

 dbw-polaris-msgs = self.callPackage ./dbw-polaris-msgs {};

 dccomms-ros = self.callPackage ./dccomms-ros {};

 dccomms-ros-msgs = self.callPackage ./dccomms-ros-msgs {};

 ddwrt-access-point = self.callPackage ./ddwrt-access-point {};

 ddynamic-reconfigure = self.callPackage ./ddynamic-reconfigure {};

 ddynamic-reconfigure-python = self.callPackage ./ddynamic-reconfigure-python {};

 default-cfg-fkie = self.callPackage ./default-cfg-fkie {};

 delphi-esr-msgs = self.callPackage ./delphi-esr-msgs {};

 delphi-mrr-msgs = self.callPackage ./delphi-mrr-msgs {};

 delphi-srr-msgs = self.callPackage ./delphi-srr-msgs {};

 dense-laser-assembler = self.callPackage ./dense-laser-assembler {};

 denso-robot-bringup = self.callPackage ./denso-robot-bringup {};

 denso-robot-control = self.callPackage ./denso-robot-control {};

 denso-robot-core = self.callPackage ./denso-robot-core {};

 denso-robot-core-test = self.callPackage ./denso-robot-core-test {};

 denso-robot-descriptions = self.callPackage ./denso-robot-descriptions {};

 denso-robot-gazebo = self.callPackage ./denso-robot-gazebo {};

 denso-robot-moveit-config = self.callPackage ./denso-robot-moveit-config {};

 denso-robot-ros = self.callPackage ./denso-robot-ros {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 depthcloud-encoder = self.callPackage ./depthcloud-encoder {};

 depthimage-to-laserscan = self.callPackage ./depthimage-to-laserscan {};

 derived-object-msgs = self.callPackage ./derived-object-msgs {};

 desistek-saga-control = self.callPackage ./desistek-saga-control {};

 desistek-saga-description = self.callPackage ./desistek-saga-description {};

 desistek-saga-gazebo = self.callPackage ./desistek-saga-gazebo {};

 desktop = self.callPackage ./desktop {};

 desktop-full = self.callPackage ./desktop-full {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-analysis = self.callPackage ./diagnostic-analysis {};

 diagnostic-common-diagnostics = self.callPackage ./diagnostic-common-diagnostics {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diagnostics = self.callPackage ./diagnostics {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 dijkstra-mesh-planner = self.callPackage ./dijkstra-mesh-planner {};

 dingo-control = self.callPackage ./dingo-control {};

 dingo-description = self.callPackage ./dingo-description {};

 dingo-desktop = self.callPackage ./dingo-desktop {};

 dingo-gazebo = self.callPackage ./dingo-gazebo {};

 dingo-msgs = self.callPackage ./dingo-msgs {};

 dingo-navigation = self.callPackage ./dingo-navigation {};

 dingo-simulator = self.callPackage ./dingo-simulator {};

 dingo-viz = self.callPackage ./dingo-viz {};

 distance-map = self.callPackage ./distance-map {};

 distance-map-core = self.callPackage ./distance-map-core {};

 distance-map-deadreck = self.callPackage ./distance-map-deadreck {};

 distance-map-msgs = self.callPackage ./distance-map-msgs {};

 distance-map-node = self.callPackage ./distance-map-node {};

 distance-map-opencv = self.callPackage ./distance-map-opencv {};

 distance-map-rviz = self.callPackage ./distance-map-rviz {};

 distance-map-tools = self.callPackage ./distance-map-tools {};

 dlux-global-planner = self.callPackage ./dlux-global-planner {};

 dlux-plugins = self.callPackage ./dlux-plugins {};

 dockeros = self.callPackage ./dockeros {};

 downward = self.callPackage ./downward {};

 driver-base = self.callPackage ./driver-base {};

 driver-common = self.callPackage ./driver-common {};

 drone-assets = self.callPackage ./drone-assets {};

 drone-wrapper = self.callPackage ./drone-wrapper {};

 dual-quaternions = self.callPackage ./dual-quaternions {};

 dual-quaternions-ros = self.callPackage ./dual-quaternions-ros {};

 dwa-local-planner = self.callPackage ./dwa-local-planner {};

 dwb-critics = self.callPackage ./dwb-critics {};

 dwb-local-planner = self.callPackage ./dwb-local-planner {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

 dwb-plugins = self.callPackage ./dwb-plugins {};

 dynamic-graph = self.callPackage ./dynamic-graph {};

 dynamic-graph-python = self.callPackage ./dynamic-graph-python {};

 dynamic-graph-tutorial = self.callPackage ./dynamic-graph-tutorial {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamic-reconfigure = self.callPackage ./dynamic-reconfigure {};

 dynamic-robot-state-publisher = self.callPackage ./dynamic-robot-state-publisher {};

 dynamic-tf-publisher = self.callPackage ./dynamic-tf-publisher {};

 dynamixel-sdk = self.callPackage ./dynamixel-sdk {};

 dynamixel-sdk-examples = self.callPackage ./dynamixel-sdk-examples {};

 dynamixel-workbench = self.callPackage ./dynamixel-workbench {};

 dynamixel-workbench-controllers = self.callPackage ./dynamixel-workbench-controllers {};

 dynamixel-workbench-msgs = self.callPackage ./dynamixel-workbench-msgs {};

 dynamixel-workbench-operators = self.callPackage ./dynamixel-workbench-operators {};

 dynamixel-workbench-toolbox = self.callPackage ./dynamixel-workbench-toolbox {};

 easy-markers = self.callPackage ./easy-markers {};

 eband-local-planner = self.callPackage ./eband-local-planner {};

 eca-a9-control = self.callPackage ./eca-a9-control {};

 eca-a9-description = self.callPackage ./eca-a9-description {};

 eca-a9-gazebo = self.callPackage ./eca-a9-gazebo {};

 ecl = self.callPackage ./ecl {};

 ecl-build = self.callPackage ./ecl-build {};

 ecl-command-line = self.callPackage ./ecl-command-line {};

 ecl-concepts = self.callPackage ./ecl-concepts {};

 ecl-config = self.callPackage ./ecl-config {};

 ecl-console = self.callPackage ./ecl-console {};

 ecl-containers = self.callPackage ./ecl-containers {};

 ecl-converters = self.callPackage ./ecl-converters {};

 ecl-converters-lite = self.callPackage ./ecl-converters-lite {};

 ecl-core = self.callPackage ./ecl-core {};

 ecl-core-apps = self.callPackage ./ecl-core-apps {};

 ecl-devices = self.callPackage ./ecl-devices {};

 ecl-eigen = self.callPackage ./ecl-eigen {};

 ecl-errors = self.callPackage ./ecl-errors {};

 ecl-exceptions = self.callPackage ./ecl-exceptions {};

 ecl-filesystem = self.callPackage ./ecl-filesystem {};

 ecl-formatters = self.callPackage ./ecl-formatters {};

 ecl-geometry = self.callPackage ./ecl-geometry {};

 ecl-io = self.callPackage ./ecl-io {};

 ecl-ipc = self.callPackage ./ecl-ipc {};

 ecl-license = self.callPackage ./ecl-license {};

 ecl-linear-algebra = self.callPackage ./ecl-linear-algebra {};

 ecl-lite = self.callPackage ./ecl-lite {};

 ecl-manipulation = self.callPackage ./ecl-manipulation {};

 ecl-manipulators = self.callPackage ./ecl-manipulators {};

 ecl-math = self.callPackage ./ecl-math {};

 ecl-mobile-robot = self.callPackage ./ecl-mobile-robot {};

 ecl-mpl = self.callPackage ./ecl-mpl {};

 ecl-navigation = self.callPackage ./ecl-navigation {};

 ecl-sigslots = self.callPackage ./ecl-sigslots {};

 ecl-sigslots-lite = self.callPackage ./ecl-sigslots-lite {};

 ecl-statistics = self.callPackage ./ecl-statistics {};

 ecl-streams = self.callPackage ./ecl-streams {};

 ecl-threads = self.callPackage ./ecl-threads {};

 ecl-time = self.callPackage ./ecl-time {};

 ecl-time-lite = self.callPackage ./ecl-time-lite {};

 ecl-tools = self.callPackage ./ecl-tools {};

 ecl-type-traits = self.callPackage ./ecl-type-traits {};

 ecl-utilities = self.callPackage ./ecl-utilities {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen-conversions = self.callPackage ./eigen-conversions {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigenpy = self.callPackage ./eigenpy {};

 eiquadprog = self.callPackage ./eiquadprog {};

 eml = self.callPackage ./eml {};

 end-effector = self.callPackage ./end-effector {};

 er-public-msgs = self.callPackage ./er-public-msgs {};

 ethercat-grant = self.callPackage ./ethercat-grant {};

 ethercat-hardware = self.callPackage ./ethercat-hardware {};

 ethercat-trigger-controllers = self.callPackage ./ethercat-trigger-controllers {};

 eus-assimp = self.callPackage ./eus-assimp {};

 eus-nlopt = self.callPackage ./eus-nlopt {};

 eus-qp = self.callPackage ./eus-qp {};

 eus-qpoases = self.callPackage ./eus-qpoases {};

 euslime = self.callPackage ./euslime {};

 euslisp = self.callPackage ./euslisp {};

 eusurdf = self.callPackage ./eusurdf {};

 executive-smach = self.callPackage ./executive-smach {};

 executive-smach-visualization = self.callPackage ./executive-smach-visualization {};

 exotica = self.callPackage ./exotica {};

 exotica-aico-solver = self.callPackage ./exotica-aico-solver {};

 exotica-cartpole-dynamics-solver = self.callPackage ./exotica-cartpole-dynamics-solver {};

 exotica-collision-scene-fcl-latest = self.callPackage ./exotica-collision-scene-fcl-latest {};

 exotica-core = self.callPackage ./exotica-core {};

 exotica-core-task-maps = self.callPackage ./exotica-core-task-maps {};

 exotica-ddp-solver = self.callPackage ./exotica-ddp-solver {};

 exotica-double-integrator-dynamics-solver = self.callPackage ./exotica-double-integrator-dynamics-solver {};

 exotica-dynamics-solvers = self.callPackage ./exotica-dynamics-solvers {};

 exotica-examples = self.callPackage ./exotica-examples {};

 exotica-ik-solver = self.callPackage ./exotica-ik-solver {};

 exotica-ilqg-solver = self.callPackage ./exotica-ilqg-solver {};

 exotica-ilqr-solver = self.callPackage ./exotica-ilqr-solver {};

 exotica-levenberg-marquardt-solver = self.callPackage ./exotica-levenberg-marquardt-solver {};

 exotica-ompl-control-solver = self.callPackage ./exotica-ompl-control-solver {};

 exotica-ompl-solver = self.callPackage ./exotica-ompl-solver {};

 exotica-pendulum-dynamics-solver = self.callPackage ./exotica-pendulum-dynamics-solver {};

 exotica-pinocchio-dynamics-solver = self.callPackage ./exotica-pinocchio-dynamics-solver {};

 exotica-quadrotor-dynamics-solver = self.callPackage ./exotica-quadrotor-dynamics-solver {};

 exotica-scipy-solver = self.callPackage ./exotica-scipy-solver {};

 exotica-time-indexed-rrt-connect-solver = self.callPackage ./exotica-time-indexed-rrt-connect-solver {};

 exotica-val-description = self.callPackage ./exotica-val-description {};

 explore-lite = self.callPackage ./explore-lite {};

 face-detector = self.callPackage ./face-detector {};

 fadecandy-driver = self.callPackage ./fadecandy-driver {};

 fadecandy-msgs = self.callPackage ./fadecandy-msgs {};

 fake-joint = self.callPackage ./fake-joint {};

 fake-joint-driver = self.callPackage ./fake-joint-driver {};

 fake-joint-launch = self.callPackage ./fake-joint-launch {};

 fake-localization = self.callPackage ./fake-localization {};

 fcl-catkin = self.callPackage ./fcl-catkin {};

 fetch-auto-dock-msgs = self.callPackage ./fetch-auto-dock-msgs {};

 fetch-bringup = self.callPackage ./fetch-bringup {};

 fetch-calibration = self.callPackage ./fetch-calibration {};

 fetch-depth-layer = self.callPackage ./fetch-depth-layer {};

 fetch-description = self.callPackage ./fetch-description {};

 fetch-driver-msgs = self.callPackage ./fetch-driver-msgs {};

 fetch-drivers = self.callPackage ./fetch-drivers {};

 fetch-gazebo = self.callPackage ./fetch-gazebo {};

 fetch-gazebo-demo = self.callPackage ./fetch-gazebo-demo {};

 fetch-ikfast-plugin = self.callPackage ./fetch-ikfast-plugin {};

 fetch-maps = self.callPackage ./fetch-maps {};

 fetch-moveit-config = self.callPackage ./fetch-moveit-config {};

 fetch-navigation = self.callPackage ./fetch-navigation {};

 fetch-open-auto-dock = self.callPackage ./fetch-open-auto-dock {};

 fetch-ros = self.callPackage ./fetch-ros {};

 fetch-simple-linear-controller = self.callPackage ./fetch-simple-linear-controller {};

 fetch-simulation = self.callPackage ./fetch-simulation {};

 fetch-teleop = self.callPackage ./fetch-teleop {};

 fetchit-challenge = self.callPackage ./fetchit-challenge {};

 ff = self.callPackage ./ff {};

 ffha = self.callPackage ./ffha {};

 fiducial-msgs = self.callPackage ./fiducial-msgs {};

 fiducial-slam = self.callPackage ./fiducial-slam {};

 fiducials = self.callPackage ./fiducials {};

 file-management = self.callPackage ./file-management {};

 file-uploader-msgs = self.callPackage ./file-uploader-msgs {};

 filters = self.callPackage ./filters {};

 find-object-2d = self.callPackage ./find-object-2d {};

 fingertip-pressure = self.callPackage ./fingertip-pressure {};

 fkie-message-filters = self.callPackage ./fkie-message-filters {};

 fkie-potree-rviz-plugin = self.callPackage ./fkie-potree-rviz-plugin {};

 flatbuffers = self.callPackage ./flatbuffers {};

 flexbe-behavior-engine = self.callPackage ./flexbe-behavior-engine {};

 flexbe-core = self.callPackage ./flexbe-core {};

 flexbe-input = self.callPackage ./flexbe-input {};

 flexbe-mirror = self.callPackage ./flexbe-mirror {};

 flexbe-msgs = self.callPackage ./flexbe-msgs {};

 flexbe-onboard = self.callPackage ./flexbe-onboard {};

 flexbe-states = self.callPackage ./flexbe-states {};

 flexbe-testing = self.callPackage ./flexbe-testing {};

 flexbe-widget = self.callPackage ./flexbe-widget {};

 flir-boson-usb = self.callPackage ./flir-boson-usb {};

 flir-ptu-description = self.callPackage ./flir-ptu-description {};

 flir-ptu-driver = self.callPackage ./flir-ptu-driver {};

 flir-ptu-viz = self.callPackage ./flir-ptu-viz {};

 floam = self.callPackage ./floam {};

 fmi-adapter = self.callPackage ./fmi-adapter {};

 fmi-adapter-examples = self.callPackage ./fmi-adapter-examples {};

 force-torque-sensor = self.callPackage ./force-torque-sensor {};

 force-torque-sensor-controller = self.callPackage ./force-torque-sensor-controller {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-controller = self.callPackage ./four-wheel-steering-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 franka-control = self.callPackage ./franka-control {};

 franka-description = self.callPackage ./franka-description {};

 franka-example-controllers = self.callPackage ./franka-example-controllers {};

 franka-gazebo = self.callPackage ./franka-gazebo {};

 franka-gripper = self.callPackage ./franka-gripper {};

 franka-hw = self.callPackage ./franka-hw {};

 franka-msgs = self.callPackage ./franka-msgs {};

 franka-ros = self.callPackage ./franka-ros {};

 franka-visualization = self.callPackage ./franka-visualization {};

 freenect-camera = self.callPackage ./freenect-camera {};

 freenect-launch = self.callPackage ./freenect-launch {};

 freenect-stack = self.callPackage ./freenect-stack {};

 freight-bringup = self.callPackage ./freight-bringup {};

 fsrobo-r = self.callPackage ./fsrobo-r {};

 fsrobo-r-bringup = self.callPackage ./fsrobo-r-bringup {};

 fsrobo-r-description = self.callPackage ./fsrobo-r-description {};

 fsrobo-r-driver = self.callPackage ./fsrobo-r-driver {};

 fsrobo-r-moveit-config = self.callPackage ./fsrobo-r-moveit-config {};

 fsrobo-r-msgs = self.callPackage ./fsrobo-r-msgs {};

 fsrobo-r-trajectory-filters = self.callPackage ./fsrobo-r-trajectory-filters {};

 fuse = self.callPackage ./fuse {};

 fuse-constraints = self.callPackage ./fuse-constraints {};

 fuse-core = self.callPackage ./fuse-core {};

 fuse-doc = self.callPackage ./fuse-doc {};

 fuse-graphs = self.callPackage ./fuse-graphs {};

 fuse-loss = self.callPackage ./fuse-loss {};

 fuse-models = self.callPackage ./fuse-models {};

 fuse-msgs = self.callPackage ./fuse-msgs {};

 fuse-optimizers = self.callPackage ./fuse-optimizers {};

 fuse-publishers = self.callPackage ./fuse-publishers {};

 fuse-variables = self.callPackage ./fuse-variables {};

 fuse-viz = self.callPackage ./fuse-viz {};

 gateway-msgs = self.callPackage ./gateway-msgs {};

 gazebo-dev = self.callPackage ./gazebo-dev {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros-control = self.callPackage ./gazebo-ros-control {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 gazebo-video-monitor-msgs = self.callPackage ./gazebo-video-monitor-msgs {};

 gazebo-video-monitor-plugins = self.callPackage ./gazebo-video-monitor-plugins {};

 gazebo-video-monitors = self.callPackage ./gazebo-video-monitors {};

 gencpp = self.callPackage ./gencpp {};

 generic-throttle = self.callPackage ./generic-throttle {};

 geneus = self.callPackage ./geneus {};

 genlisp = self.callPackage ./genlisp {};

 genmsg = self.callPackage ./genmsg {};

 genmypy = self.callPackage ./genmypy {};

 gennodejs = self.callPackage ./gennodejs {};

 genpy = self.callPackage ./genpy {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometric-shapes = self.callPackage ./geometric-shapes {};

 geometry = self.callPackage ./geometry {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 geos-cmake-module = self.callPackage ./geos-cmake-module {};

 gl-dependency = self.callPackage ./gl-dependency {};

 global-planner = self.callPackage ./global-planner {};

 global-planner-tests = self.callPackage ./global-planner-tests {};

 gmapping = self.callPackage ./gmapping {};

 goal-passer = self.callPackage ./goal-passer {};

 gpio-control = self.callPackage ./gpio-control {};

 gps-common = self.callPackage ./gps-common {};

 gps-umd = self.callPackage ./gps-umd {};

 gpsd-client = self.callPackage ./gpsd-client {};

 graceful-controller = self.callPackage ./graceful-controller {};

 graceful-controller-ros = self.callPackage ./graceful-controller-ros {};

 graft = self.callPackage ./graft {};

 graph-msgs = self.callPackage ./graph-msgs {};

 grasping-msgs = self.callPackage ./grasping-msgs {};

 grid-map = self.callPackage ./grid-map {};

 grid-map-core = self.callPackage ./grid-map-core {};

 grid-map-costmap-2d = self.callPackage ./grid-map-costmap-2d {};

 grid-map-cv = self.callPackage ./grid-map-cv {};

 grid-map-demos = self.callPackage ./grid-map-demos {};

 grid-map-filters = self.callPackage ./grid-map-filters {};

 grid-map-loader = self.callPackage ./grid-map-loader {};

 grid-map-msgs = self.callPackage ./grid-map-msgs {};

 grid-map-octomap = self.callPackage ./grid-map-octomap {};

 grid-map-pcl = self.callPackage ./grid-map-pcl {};

 grid-map-ros = self.callPackage ./grid-map-ros {};

 grid-map-rviz-plugin = self.callPackage ./grid-map-rviz-plugin {};

 grid-map-sdf = self.callPackage ./grid-map-sdf {};

 grid-map-visualization = self.callPackage ./grid-map-visualization {};

 gripper-action-controller = self.callPackage ./gripper-action-controller {};

 grpc = self.callPackage ./grpc {};

 gscam = self.callPackage ./gscam {};

 gundam-robot = self.callPackage ./gundam-robot {};

 gundam-rx78-control = self.callPackage ./gundam-rx78-control {};

 gundam-rx78-description = self.callPackage ./gundam-rx78-description {};

 gundam-rx78-gazebo = self.callPackage ./gundam-rx78-gazebo {};

 h264-encoder-core = self.callPackage ./h264-encoder-core {};

 h264-video-encoder = self.callPackage ./h264-video-encoder {};

 handeye = self.callPackage ./handeye {};

 hardware-interface = self.callPackage ./hardware-interface {};

 haros-catkin = self.callPackage ./haros-catkin {};

 hdf5-map-io = self.callPackage ./hdf5-map-io {};

 health-metric-collector = self.callPackage ./health-metric-collector {};

 hebi-cpp-api = self.callPackage ./hebi-cpp-api {};

 hebi-description = self.callPackage ./hebi-description {};

 hector-components-description = self.callPackage ./hector-components-description {};

 hector-compressed-map-transport = self.callPackage ./hector-compressed-map-transport {};

 hector-gazebo = self.callPackage ./hector-gazebo {};

 hector-gazebo-plugins = self.callPackage ./hector-gazebo-plugins {};

 hector-gazebo-thermal-camera = self.callPackage ./hector-gazebo-thermal-camera {};

 hector-gazebo-worlds = self.callPackage ./hector-gazebo-worlds {};

 hector-geotiff = self.callPackage ./hector-geotiff {};

 hector-geotiff-plugins = self.callPackage ./hector-geotiff-plugins {};

 hector-imu-attitude-to-tf = self.callPackage ./hector-imu-attitude-to-tf {};

 hector-imu-tools = self.callPackage ./hector-imu-tools {};

 hector-localization = self.callPackage ./hector-localization {};

 hector-map-server = self.callPackage ./hector-map-server {};

 hector-map-tools = self.callPackage ./hector-map-tools {};

 hector-mapping = self.callPackage ./hector-mapping {};

 hector-marker-drawing = self.callPackage ./hector-marker-drawing {};

 hector-models = self.callPackage ./hector-models {};

 hector-nav-msgs = self.callPackage ./hector-nav-msgs {};

 hector-pose-estimation = self.callPackage ./hector-pose-estimation {};

 hector-pose-estimation-core = self.callPackage ./hector-pose-estimation-core {};

 hector-sensors-description = self.callPackage ./hector-sensors-description {};

 hector-sensors-gazebo = self.callPackage ./hector-sensors-gazebo {};

 hector-slam = self.callPackage ./hector-slam {};

 hector-slam-launch = self.callPackage ./hector-slam-launch {};

 hector-trajectory-server = self.callPackage ./hector-trajectory-server {};

 hector-xacro-tools = self.callPackage ./hector-xacro-tools {};

 heifu = self.callPackage ./heifu {};

 heifu-bringup = self.callPackage ./heifu-bringup {};

 heifu-description = self.callPackage ./heifu-description {};

 heifu-diagnostic = self.callPackage ./heifu-diagnostic {};

 heifu-mavros = self.callPackage ./heifu-mavros {};

 heifu-msgs = self.callPackage ./heifu-msgs {};

 heifu-safety = self.callPackage ./heifu-safety {};

 heifu-simple-waypoint = self.callPackage ./heifu-simple-waypoint {};

 heifu-tools = self.callPackage ./heifu-tools {};

 heron-control = self.callPackage ./heron-control {};

 heron-controller = self.callPackage ./heron-controller {};

 heron-description = self.callPackage ./heron-description {};

 heron-desktop = self.callPackage ./heron-desktop {};

 heron-gazebo = self.callPackage ./heron-gazebo {};

 heron-msgs = self.callPackage ./heron-msgs {};

 heron-simulator = self.callPackage ./heron-simulator {};

 heron-viz = self.callPackage ./heron-viz {};

 hfl-driver = self.callPackage ./hfl-driver {};

 hironx-calibration = self.callPackage ./hironx-calibration {};

 hironx-moveit-config = self.callPackage ./hironx-moveit-config {};

 hironx-ros-bridge = self.callPackage ./hironx-ros-bridge {};

 hls-lfcd-lds-driver = self.callPackage ./hls-lfcd-lds-driver {};

 hokuyo3d = self.callPackage ./hokuyo3d {};

 hostapd-access-point = self.callPackage ./hostapd-access-point {};

 hpp-fcl = self.callPackage ./hpp-fcl {};

 hrpsys = self.callPackage ./hrpsys {};

 hrpsys-ros-bridge = self.callPackage ./hrpsys-ros-bridge {};

 hrpsys-tools = self.callPackage ./hrpsys-tools {};

 husky-base = self.callPackage ./husky-base {};

 husky-bringup = self.callPackage ./husky-bringup {};

 husky-cartographer-navigation = self.callPackage ./husky-cartographer-navigation {};

 husky-control = self.callPackage ./husky-control {};

 husky-description = self.callPackage ./husky-description {};

 husky-desktop = self.callPackage ./husky-desktop {};

 husky-gazebo = self.callPackage ./husky-gazebo {};

 husky-msgs = self.callPackage ./husky-msgs {};

 husky-navigation = self.callPackage ./husky-navigation {};

 husky-robot = self.callPackage ./husky-robot {};

 husky-simulator = self.callPackage ./husky-simulator {};

 husky-viz = self.callPackage ./husky-viz {};

 ibeo-core = self.callPackage ./ibeo-core {};

 ibeo-lux = self.callPackage ./ibeo-lux {};

 ibeo-msgs = self.callPackage ./ibeo-msgs {};

 ieee80211-channels = self.callPackage ./ieee80211-channels {};

 ifm3d = self.callPackage ./ifm3d {};

 ifm3d-core = self.callPackage ./ifm3d-core {};

 igvc-self-drive-description = self.callPackage ./igvc-self-drive-description {};

 igvc-self-drive-gazebo = self.callPackage ./igvc-self-drive-gazebo {};

 igvc-self-drive-gazebo-plugins = self.callPackage ./igvc-self-drive-gazebo-plugins {};

 igvc-self-drive-sim = self.callPackage ./igvc-self-drive-sim {};

 iirob-filters = self.callPackage ./iirob-filters {};

 image-cb-detector = self.callPackage ./image-cb-detector {};

 image-common = self.callPackage ./image-common {};

 image-exposure-msgs = self.callPackage ./image-exposure-msgs {};

 image-geometry = self.callPackage ./image-geometry {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-rotate = self.callPackage ./image-rotate {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 image-view2 = self.callPackage ./image-view2 {};

 imagesift = self.callPackage ./imagesift {};

 imagezero = self.callPackage ./imagezero {};

 imagezero-image-transport = self.callPackage ./imagezero-image-transport {};

 imagezero-ros = self.callPackage ./imagezero-ros {};

 imu-complementary-filter = self.callPackage ./imu-complementary-filter {};

 imu-filter-madgwick = self.callPackage ./imu-filter-madgwick {};

 imu-monitor = self.callPackage ./imu-monitor {};

 imu-pipeline = self.callPackage ./imu-pipeline {};

 imu-processors = self.callPackage ./imu-processors {};

 imu-sensor-controller = self.callPackage ./imu-sensor-controller {};

 imu-tools = self.callPackage ./imu-tools {};

 imu-transformer = self.callPackage ./imu-transformer {};

 industrial-core = self.callPackage ./industrial-core {};

 industrial-deprecated = self.callPackage ./industrial-deprecated {};

 industrial-msgs = self.callPackage ./industrial-msgs {};

 industrial-robot-client = self.callPackage ./industrial-robot-client {};

 industrial-robot-simulator = self.callPackage ./industrial-robot-simulator {};

 industrial-robot-status-controller = self.callPackage ./industrial-robot-status-controller {};

 industrial-robot-status-interface = self.callPackage ./industrial-robot-status-interface {};

 industrial-trajectory-filters = self.callPackage ./industrial-trajectory-filters {};

 industrial-utils = self.callPackage ./industrial-utils {};

 inorbit-republisher = self.callPackage ./inorbit-republisher {};

 interactive-marker-proxy = self.callPackage ./interactive-marker-proxy {};

 interactive-marker-tutorials = self.callPackage ./interactive-marker-tutorials {};

 interactive-marker-twist-server = self.callPackage ./interactive-marker-twist-server {};

 interactive-markers = self.callPackage ./interactive-markers {};

 interval-intersection = self.callPackage ./interval-intersection {};

 ipa-3d-fov-visualization = self.callPackage ./ipa-3d-fov-visualization {};

 ipr-extern = self.callPackage ./ipr-extern {};

 ira-laser-tools = self.callPackage ./ira-laser-tools {};

 iris-lama = self.callPackage ./iris-lama {};

 iris-lama-ros = self.callPackage ./iris-lama-ros {};

 ivcon = self.callPackage ./ivcon {};

 ixblue-ins = self.callPackage ./ixblue-ins {};

 ixblue-ins-driver = self.callPackage ./ixblue-ins-driver {};

 ixblue-ins-msgs = self.callPackage ./ixblue-ins-msgs {};

 ixblue-stdbin-decoder = self.callPackage ./ixblue-stdbin-decoder {};

 jackal-cartographer-navigation = self.callPackage ./jackal-cartographer-navigation {};

 jackal-control = self.callPackage ./jackal-control {};

 jackal-description = self.callPackage ./jackal-description {};

 jackal-desktop = self.callPackage ./jackal-desktop {};

 jackal-gazebo = self.callPackage ./jackal-gazebo {};

 jackal-msgs = self.callPackage ./jackal-msgs {};

 jackal-navigation = self.callPackage ./jackal-navigation {};

 jackal-simulator = self.callPackage ./jackal-simulator {};

 jackal-tutorials = self.callPackage ./jackal-tutorials {};

 jackal-viz = self.callPackage ./jackal-viz {};

 jderobot-assets = self.callPackage ./jderobot-assets {};

 jderobot-camviz = self.callPackage ./jderobot-camviz {};

 jderobot-carviz = self.callPackage ./jderobot-carviz {};

 jderobot-color-tuner = self.callPackage ./jderobot-color-tuner {};

 jderobot-drones = self.callPackage ./jderobot-drones {};

 joint-limits-interface = self.callPackage ./joint-limits-interface {};

 joint-qualification-controllers = self.callPackage ./joint-qualification-controllers {};

 joint-state-controller = self.callPackage ./joint-state-controller {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-state-publisher-gui = self.callPackage ./joint-state-publisher-gui {};

 joint-states-settler = self.callPackage ./joint-states-settler {};

 joint-trajectory-action = self.callPackage ./joint-trajectory-action {};

 joint-trajectory-action-tools = self.callPackage ./joint-trajectory-action-tools {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joint-trajectory-generator = self.callPackage ./joint-trajectory-generator {};

 jointstick = self.callPackage ./jointstick {};

 joy = self.callPackage ./joy {};

 joy-listener = self.callPackage ./joy-listener {};

 joy-mouse = self.callPackage ./joy-mouse {};

 joy-teleop = self.callPackage ./joy-teleop {};

 joystick-drivers = self.callPackage ./joystick-drivers {};

 joystick-interrupt = self.callPackage ./joystick-interrupt {};

 jpeg-streamer = self.callPackage ./jpeg-streamer {};

 jsk-3rdparty = self.callPackage ./jsk-3rdparty {};

 jsk-calibration = self.callPackage ./jsk-calibration {};

 jsk-common = self.callPackage ./jsk-common {};

 jsk-common-msgs = self.callPackage ./jsk-common-msgs {};

 jsk-control = self.callPackage ./jsk-control {};

 jsk-footstep-controller = self.callPackage ./jsk-footstep-controller {};

 jsk-footstep-msgs = self.callPackage ./jsk-footstep-msgs {};

 jsk-footstep-planner = self.callPackage ./jsk-footstep-planner {};

 jsk-gui-msgs = self.callPackage ./jsk-gui-msgs {};

 jsk-hark-msgs = self.callPackage ./jsk-hark-msgs {};

 jsk-ik-server = self.callPackage ./jsk-ik-server {};

 jsk-interactive = self.callPackage ./jsk-interactive {};

 jsk-interactive-marker = self.callPackage ./jsk-interactive-marker {};

 jsk-interactive-test = self.callPackage ./jsk-interactive-test {};

 jsk-model-tools = self.callPackage ./jsk-model-tools {};

 jsk-network-tools = self.callPackage ./jsk-network-tools {};

 jsk-pcl-ros = self.callPackage ./jsk-pcl-ros {};

 jsk-pcl-ros-utils = self.callPackage ./jsk-pcl-ros-utils {};

 jsk-planning = self.callPackage ./jsk-planning {};

 jsk-pr2eus = self.callPackage ./jsk-pr2eus {};

 jsk-recognition = self.callPackage ./jsk-recognition {};

 jsk-recognition-msgs = self.callPackage ./jsk-recognition-msgs {};

 jsk-recognition-utils = self.callPackage ./jsk-recognition-utils {};

 jsk-roseus = self.callPackage ./jsk-roseus {};

 jsk-rqt-plugins = self.callPackage ./jsk-rqt-plugins {};

 jsk-rviz-plugins = self.callPackage ./jsk-rviz-plugins {};

 jsk-teleop-joy = self.callPackage ./jsk-teleop-joy {};

 jsk-tilt-laser = self.callPackage ./jsk-tilt-laser {};

 jsk-topic-tools = self.callPackage ./jsk-topic-tools {};

 jsk-visualization = self.callPackage ./jsk-visualization {};

 jskeus = self.callPackage ./jskeus {};

 json-msgs = self.callPackage ./json-msgs {};

 json-transport = self.callPackage ./json-transport {};

 julius = self.callPackage ./julius {};

 kalman-filter = self.callPackage ./kalman-filter {};

 kartech-linear-actuator-msgs = self.callPackage ./kartech-linear-actuator-msgs {};

 kdl-conversions = self.callPackage ./kdl-conversions {};

 kdl-parser = self.callPackage ./kdl-parser {};

 kdl-parser-py = self.callPackage ./kdl-parser-py {};

 key-teleop = self.callPackage ./key-teleop {};

 khi-duaro-description = self.callPackage ./khi-duaro-description {};

 khi-duaro-gazebo = self.callPackage ./khi-duaro-gazebo {};

 khi-duaro-ikfast-plugin = self.callPackage ./khi-duaro-ikfast-plugin {};

 khi-duaro-moveit-config = self.callPackage ./khi-duaro-moveit-config {};

 khi-robot = self.callPackage ./khi-robot {};

 khi-robot-bringup = self.callPackage ./khi-robot-bringup {};

 khi-robot-control = self.callPackage ./khi-robot-control {};

 khi-robot-msgs = self.callPackage ./khi-robot-msgs {};

 khi-robot-test = self.callPackage ./khi-robot-test {};

 khi-rs007l-moveit-config = self.callPackage ./khi-rs007l-moveit-config {};

 khi-rs007n-moveit-config = self.callPackage ./khi-rs007n-moveit-config {};

 khi-rs080n-moveit-config = self.callPackage ./khi-rs080n-moveit-config {};

 khi-rs-description = self.callPackage ./khi-rs-description {};

 khi-rs-gazebo = self.callPackage ./khi-rs-gazebo {};

 khi-rs-ikfast-plugin = self.callPackage ./khi-rs-ikfast-plugin {};

 kinesis-manager = self.callPackage ./kinesis-manager {};

 kinesis-video-msgs = self.callPackage ./kinesis-video-msgs {};

 kinesis-video-streamer = self.callPackage ./kinesis-video-streamer {};

 knowledge-representation = self.callPackage ./knowledge-representation {};

 kobuki-core = self.callPackage ./kobuki-core {};

 kobuki-dock-drive = self.callPackage ./kobuki-dock-drive {};

 kobuki-driver = self.callPackage ./kobuki-driver {};

 kobuki-ftdi = self.callPackage ./kobuki-ftdi {};

 kobuki-msgs = self.callPackage ./kobuki-msgs {};

 ksql-airport = self.callPackage ./ksql-airport {};

 kvh-geo-fog-3d = self.callPackage ./kvh-geo-fog-3d {};

 kvh-geo-fog-3d-driver = self.callPackage ./kvh-geo-fog-3d-driver {};

 kvh-geo-fog-3d-msgs = self.callPackage ./kvh-geo-fog-3d-msgs {};

 kvh-geo-fog-3d-rviz = self.callPackage ./kvh-geo-fog-3d-rviz {};

 label-manager = self.callPackage ./label-manager {};

 lanelet2 = self.callPackage ./lanelet2 {};

 lanelet2-core = self.callPackage ./lanelet2-core {};

 lanelet2-examples = self.callPackage ./lanelet2-examples {};

 lanelet2-io = self.callPackage ./lanelet2-io {};

 lanelet2-maps = self.callPackage ./lanelet2-maps {};

 lanelet2-projection = self.callPackage ./lanelet2-projection {};

 lanelet2-python = self.callPackage ./lanelet2-python {};

 lanelet2-routing = self.callPackage ./lanelet2-routing {};

 lanelet2-traffic-rules = self.callPackage ./lanelet2-traffic-rules {};

 lanelet2-validation = self.callPackage ./lanelet2-validation {};

 laptop-battery-monitor = self.callPackage ./laptop-battery-monitor {};

 laser-assembler = self.callPackage ./laser-assembler {};

 laser-cb-detector = self.callPackage ./laser-cb-detector {};

 laser-filtering = self.callPackage ./laser-filtering {};

 laser-filters = self.callPackage ./laser-filters {};

 laser-filters-jsk-patch = self.callPackage ./laser-filters-jsk-patch {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-joint-processor = self.callPackage ./laser-joint-processor {};

 laser-joint-projector = self.callPackage ./laser-joint-projector {};

 laser-ortho-projector = self.callPackage ./laser-ortho-projector {};

 laser-pipeline = self.callPackage ./laser-pipeline {};

 laser-proc = self.callPackage ./laser-proc {};

 laser-scan-densifier = self.callPackage ./laser-scan-densifier {};

 laser-scan-matcher = self.callPackage ./laser-scan-matcher {};

 laser-scan-publisher-tutorial = self.callPackage ./laser-scan-publisher-tutorial {};

 laser-scan-sparsifier = self.callPackage ./laser-scan-sparsifier {};

 laser-scan-splitter = self.callPackage ./laser-scan-splitter {};

 laser-tilt-controller-filter = self.callPackage ./laser-tilt-controller-filter {};

 launchfile-switcher = self.callPackage ./launchfile-switcher {};

 lauv-control = self.callPackage ./lauv-control {};

 lauv-description = self.callPackage ./lauv-description {};

 lauv-gazebo = self.callPackage ./lauv-gazebo {};

 led-msgs = self.callPackage ./led-msgs {};

 leg-detector = self.callPackage ./leg-detector {};

 leo = self.callPackage ./leo {};

 leo-bringup = self.callPackage ./leo-bringup {};

 leo-description = self.callPackage ./leo-description {};

 leo-desktop = self.callPackage ./leo-desktop {};

 leo-fw = self.callPackage ./leo-fw {};

 leo-gazebo = self.callPackage ./leo-gazebo {};

 leo-robot = self.callPackage ./leo-robot {};

 leo-simulator = self.callPackage ./leo-simulator {};

 leo-teleop = self.callPackage ./leo-teleop {};

 leo-viz = self.callPackage ./leo-viz {};

 leuze-bringup = self.callPackage ./leuze-bringup {};

 leuze-description = self.callPackage ./leuze-description {};

 leuze-msgs = self.callPackage ./leuze-msgs {};

 leuze-phidget-driver = self.callPackage ./leuze-phidget-driver {};

 leuze-ros-drivers = self.callPackage ./leuze-ros-drivers {};

 leuze-rsl-driver = self.callPackage ./leuze-rsl-driver {};

 lex-common = self.callPackage ./lex-common {};

 lex-common-msgs = self.callPackage ./lex-common-msgs {};

 lex-node = self.callPackage ./lex-node {};

 lgsvl-msgs = self.callPackage ./lgsvl-msgs {};

 libcmt = self.callPackage ./libcmt {};

 libcreate = self.callPackage ./libcreate {};

 libdlib = self.callPackage ./libdlib {};

 libfranka = self.callPackage ./libfranka {};

 libg2o = self.callPackage ./libg2o {};

 libmavconn = self.callPackage ./libmavconn {};

 libmodbus = self.callPackage ./libmodbus {};

 libntcan = self.callPackage ./libntcan {};

 libpcan = self.callPackage ./libpcan {};

 libphidget21 = self.callPackage ./libphidget21 {};

 libphidgets = self.callPackage ./libphidgets {};

 libqt-concurrent = self.callPackage ./libqt-concurrent {};

 libqt-core = self.callPackage ./libqt-core {};

 libqt-dev = self.callPackage ./libqt-dev {};

 libqt-gui = self.callPackage ./libqt-gui {};

 libqt-network = self.callPackage ./libqt-network {};

 libqt-opengl = self.callPackage ./libqt-opengl {};

 libqt-opengl-dev = self.callPackage ./libqt-opengl-dev {};

 libqt-svg-dev = self.callPackage ./libqt-svg-dev {};

 libqt-widgets = self.callPackage ./libqt-widgets {};

 librealsense2 = self.callPackage ./librealsense2 {};

 libreflexxestype2 = self.callPackage ./libreflexxestype2 {};

 librviz-tutorial = self.callPackage ./librviz-tutorial {};

 libsensors-monitor = self.callPackage ./libsensors-monitor {};

 libsiftfast = self.callPackage ./libsiftfast {};

 libuvc = self.callPackage ./libuvc {};

 libuvc-camera = self.callPackage ./libuvc-camera {};

 libuvc-ros = self.callPackage ./libuvc-ros {};

 linksys-access-point = self.callPackage ./linksys-access-point {};

 linux-networking = self.callPackage ./linux-networking {};

 linux-peripheral-interfaces = self.callPackage ./linux-peripheral-interfaces {};

 lms1xx = self.callPackage ./lms1xx {};

 lockfree = self.callPackage ./lockfree {};

 locomotor = self.callPackage ./locomotor {};

 locomotor-msgs = self.callPackage ./locomotor-msgs {};

 locomove-base = self.callPackage ./locomove-base {};

 log-view = self.callPackage ./log-view {};

 lpg-planner = self.callPackage ./lpg-planner {};

 lusb = self.callPackage ./lusb {};

 magical-ros2-conversion-tool = self.callPackage ./magical-ros2-conversion-tool {};

 map-laser = self.callPackage ./map-laser {};

 map-merge-3d = self.callPackage ./map-merge-3d {};

 map-msgs = self.callPackage ./map-msgs {};

 map-organizer = self.callPackage ./map-organizer {};

 map-organizer-msgs = self.callPackage ./map-organizer-msgs {};

 map-server = self.callPackage ./map-server {};

 mapviz = self.callPackage ./mapviz {};

 mapviz-plugins = self.callPackage ./mapviz-plugins {};

 marker-msgs = self.callPackage ./marker-msgs {};

 marti-can-msgs = self.callPackage ./marti-can-msgs {};

 marti-common-msgs = self.callPackage ./marti-common-msgs {};

 marti-data-structures = self.callPackage ./marti-data-structures {};

 marti-dbw-msgs = self.callPackage ./marti-dbw-msgs {};

 marti-nav-msgs = self.callPackage ./marti-nav-msgs {};

 marti-perception-msgs = self.callPackage ./marti-perception-msgs {};

 marti-sensor-msgs = self.callPackage ./marti-sensor-msgs {};

 marti-status-msgs = self.callPackage ./marti-status-msgs {};

 marti-visualization-msgs = self.callPackage ./marti-visualization-msgs {};

 marvelmind-nav = self.callPackage ./marvelmind-nav {};

 master-discovery-fkie = self.callPackage ./master-discovery-fkie {};

 master-sync-fkie = self.callPackage ./master-sync-fkie {};

 mav-comm = self.callPackage ./mav-comm {};

 mav-msgs = self.callPackage ./mav-msgs {};

 mav-planning-msgs = self.callPackage ./mav-planning-msgs {};

 mavlink = self.callPackage ./mavlink {};

 mavros = self.callPackage ./mavros {};

 mavros-extras = self.callPackage ./mavros-extras {};

 mavros-msgs = self.callPackage ./mavros-msgs {};

 mbf-abstract-core = self.callPackage ./mbf-abstract-core {};

 mbf-abstract-nav = self.callPackage ./mbf-abstract-nav {};

 mbf-costmap-core = self.callPackage ./mbf-costmap-core {};

 mbf-costmap-nav = self.callPackage ./mbf-costmap-nav {};

 mbf-mesh-core = self.callPackage ./mbf-mesh-core {};

 mbf-mesh-nav = self.callPackage ./mbf-mesh-nav {};

 mbf-msgs = self.callPackage ./mbf-msgs {};

 mbf-recovery-behaviors = self.callPackage ./mbf-recovery-behaviors {};

 mbf-simple-nav = self.callPackage ./mbf-simple-nav {};

 mbf-utility = self.callPackage ./mbf-utility {};

 mcl-3dl = self.callPackage ./mcl-3dl {};

 mcl-3dl-msgs = self.callPackage ./mcl-3dl-msgs {};

 mcmillan-airfield = self.callPackage ./mcmillan-airfield {};

 md49-base-controller = self.callPackage ./md49-base-controller {};

 md49-messages = self.callPackage ./md49-messages {};

 md49-serialport = self.callPackage ./md49-serialport {};

 mecanum-gazebo-plugin = self.callPackage ./mecanum-gazebo-plugin {};

 media-export = self.callPackage ./media-export {};

 mesh-client = self.callPackage ./mesh-client {};

 mesh-controller = self.callPackage ./mesh-controller {};

 mesh-layers = self.callPackage ./mesh-layers {};

 mesh-map = self.callPackage ./mesh-map {};

 mesh-msgs = self.callPackage ./mesh-msgs {};

 mesh-msgs-conversions = self.callPackage ./mesh-msgs-conversions {};

 mesh-msgs-hdf5 = self.callPackage ./mesh-msgs-hdf5 {};

 mesh-msgs-transform = self.callPackage ./mesh-msgs-transform {};

 mesh-navigation = self.callPackage ./mesh-navigation {};

 mesh-tools = self.callPackage ./mesh-tools {};

 message-filters = self.callPackage ./message-filters {};

 message-generation = self.callPackage ./message-generation {};

 message-relay = self.callPackage ./message-relay {};

 message-runtime = self.callPackage ./message-runtime {};

 message-to-tf = self.callPackage ./message-to-tf {};

 microstrain-3dmgx2-imu = self.callPackage ./microstrain-3dmgx2-imu {};

 microstrain-inertial-driver = self.callPackage ./microstrain-inertial-driver {};

 microstrain-inertial-examples = self.callPackage ./microstrain-inertial-examples {};

 microstrain-inertial-msgs = self.callPackage ./microstrain-inertial-msgs {};

 microstrain-mips = self.callPackage ./microstrain-mips {};

 mikrotik-swos-tools = self.callPackage ./mikrotik-swos-tools {};

 mini-maxwell = self.callPackage ./mini-maxwell {};

 mir-actions = self.callPackage ./mir-actions {};

 mir-description = self.callPackage ./mir-description {};

 mir-driver = self.callPackage ./mir-driver {};

 mir-dwb-critics = self.callPackage ./mir-dwb-critics {};

 mir-gazebo = self.callPackage ./mir-gazebo {};

 mir-msgs = self.callPackage ./mir-msgs {};

 mir-navigation = self.callPackage ./mir-navigation {};

 mir-robot = self.callPackage ./mir-robot {};

 mk = self.callPackage ./mk {};

 ml-classifiers = self.callPackage ./ml-classifiers {};

 mobile-robot-simulator = self.callPackage ./mobile-robot-simulator {};

 mobileye-560-660-msgs = self.callPackage ./mobileye-560-660-msgs {};

 mocap-optitrack = self.callPackage ./mocap-optitrack {};

 mongodb-log = self.callPackage ./mongodb-log {};

 mongodb-store-msgs = self.callPackage ./mongodb-store-msgs {};

 monocam-settler = self.callPackage ./monocam-settler {};

 moose-control = self.callPackage ./moose-control {};

 moose-description = self.callPackage ./moose-description {};

 moose-desktop = self.callPackage ./moose-desktop {};

 moose-gazebo = self.callPackage ./moose-gazebo {};

 moose-msgs = self.callPackage ./moose-msgs {};

 moose-simulator = self.callPackage ./moose-simulator {};

 moose-viz = self.callPackage ./moose-viz {};

 mouse-teleop = self.callPackage ./mouse-teleop {};

 move-base = self.callPackage ./move-base {};

 move-base-flex = self.callPackage ./move-base-flex {};

 move-base-msgs = self.callPackage ./move-base-msgs {};

 move-base-sequence = self.callPackage ./move-base-sequence {};

 move-basic = self.callPackage ./move-basic {};

 move-slow-and-clear = self.callPackage ./move-slow-and-clear {};

 moveback-recovery = self.callPackage ./moveback-recovery {};

 moveit = self.callPackage ./moveit {};

 moveit-chomp-optimizer-adapter = self.callPackage ./moveit-chomp-optimizer-adapter {};

 moveit-controller-manager-example = self.callPackage ./moveit-controller-manager-example {};

 moveit-core = self.callPackage ./moveit-core {};

 moveit-fake-controller-manager = self.callPackage ./moveit-fake-controller-manager {};

 moveit-kinematics = self.callPackage ./moveit-kinematics {};

 moveit-msgs = self.callPackage ./moveit-msgs {};

 moveit-opw-kinematics-plugin = self.callPackage ./moveit-opw-kinematics-plugin {};

 moveit-planners = self.callPackage ./moveit-planners {};

 moveit-planners-chomp = self.callPackage ./moveit-planners-chomp {};

 moveit-planners-ompl = self.callPackage ./moveit-planners-ompl {};

 moveit-plugins = self.callPackage ./moveit-plugins {};

 moveit-pr2 = self.callPackage ./moveit-pr2 {};

 moveit-resources = self.callPackage ./moveit-resources {};

 moveit-resources-fanuc-description = self.callPackage ./moveit-resources-fanuc-description {};

 moveit-resources-fanuc-moveit-config = self.callPackage ./moveit-resources-fanuc-moveit-config {};

 moveit-resources-panda-description = self.callPackage ./moveit-resources-panda-description {};

 moveit-resources-panda-moveit-config = self.callPackage ./moveit-resources-panda-moveit-config {};

 moveit-resources-pr2-description = self.callPackage ./moveit-resources-pr2-description {};

 moveit-resources-prbt-ikfast-manipulator-plugin = self.callPackage ./moveit-resources-prbt-ikfast-manipulator-plugin {};

 moveit-resources-prbt-moveit-config = self.callPackage ./moveit-resources-prbt-moveit-config {};

 moveit-resources-prbt-pg70-support = self.callPackage ./moveit-resources-prbt-pg70-support {};

 moveit-resources-prbt-support = self.callPackage ./moveit-resources-prbt-support {};

 moveit-ros = self.callPackage ./moveit-ros {};

 moveit-ros-benchmarks = self.callPackage ./moveit-ros-benchmarks {};

 moveit-ros-control-interface = self.callPackage ./moveit-ros-control-interface {};

 moveit-ros-manipulation = self.callPackage ./moveit-ros-manipulation {};

 moveit-ros-move-group = self.callPackage ./moveit-ros-move-group {};

 moveit-ros-occupancy-map-monitor = self.callPackage ./moveit-ros-occupancy-map-monitor {};

 moveit-ros-perception = self.callPackage ./moveit-ros-perception {};

 moveit-ros-planning = self.callPackage ./moveit-ros-planning {};

 moveit-ros-planning-interface = self.callPackage ./moveit-ros-planning-interface {};

 moveit-ros-robot-interaction = self.callPackage ./moveit-ros-robot-interaction {};

 moveit-ros-visualization = self.callPackage ./moveit-ros-visualization {};

 moveit-ros-warehouse = self.callPackage ./moveit-ros-warehouse {};

 moveit-runtime = self.callPackage ./moveit-runtime {};

 moveit-servo = self.callPackage ./moveit-servo {};

 moveit-setup-assistant = self.callPackage ./moveit-setup-assistant {};

 moveit-sim-controller = self.callPackage ./moveit-sim-controller {};

 moveit-simple-controller-manager = self.callPackage ./moveit-simple-controller-manager {};

 moveit-visual-tools = self.callPackage ./moveit-visual-tools {};

 movie-publisher = self.callPackage ./movie-publisher {};

 mpc-local-planner = self.callPackage ./mpc-local-planner {};

 mpc-local-planner-examples = self.callPackage ./mpc-local-planner-examples {};

 mpc-local-planner-msgs = self.callPackage ./mpc-local-planner-msgs {};

 mqtt-bridge = self.callPackage ./mqtt-bridge {};

 mrp2-bringup = self.callPackage ./mrp2-bringup {};

 mrp2-common = self.callPackage ./mrp2-common {};

 mrp2-description = self.callPackage ./mrp2-description {};

 mrp2-desktop = self.callPackage ./mrp2-desktop {};

 mrp2-display = self.callPackage ./mrp2-display {};

 mrp2-gazebo = self.callPackage ./mrp2-gazebo {};

 mrp2-hardware = self.callPackage ./mrp2-hardware {};

 mrp2-navigation = self.callPackage ./mrp2-navigation {};

 mrp2-robot = self.callPackage ./mrp2-robot {};

 mrp2-simulator = self.callPackage ./mrp2-simulator {};

 mrp2-slam = self.callPackage ./mrp2-slam {};

 mrp2-teleop = self.callPackage ./mrp2-teleop {};

 mrp2-viz = self.callPackage ./mrp2-viz {};

 mrpt1 = self.callPackage ./mrpt1 {};

 mrpt-bridge = self.callPackage ./mrpt-bridge {};

 mrpt-ekf-slam-2d = self.callPackage ./mrpt-ekf-slam-2d {};

 mrpt-ekf-slam-3d = self.callPackage ./mrpt-ekf-slam-3d {};

 mrpt-graphslam-2d = self.callPackage ./mrpt-graphslam-2d {};

 mrpt-icp-slam-2d = self.callPackage ./mrpt-icp-slam-2d {};

 mrpt-local-obstacles = self.callPackage ./mrpt-local-obstacles {};

 mrpt-localization = self.callPackage ./mrpt-localization {};

 mrpt-map = self.callPackage ./mrpt-map {};

 mrpt-msgs = self.callPackage ./mrpt-msgs {};

 mrpt-navigation = self.callPackage ./mrpt-navigation {};

 mrpt-rawlog = self.callPackage ./mrpt-rawlog {};

 mrpt-rbpf-slam = self.callPackage ./mrpt-rbpf-slam {};

 mrpt-reactivenav2d = self.callPackage ./mrpt-reactivenav2d {};

 mrpt-slam = self.callPackage ./mrpt-slam {};

 mrpt-tutorials = self.callPackage ./mrpt-tutorials {};

 mrt-cmake-modules = self.callPackage ./mrt-cmake-modules {};

 multi-interface-roam = self.callPackage ./multi-interface-roam {};

 multi-map-server = self.callPackage ./multi-map-server {};

 multi-object-tracking-lidar = self.callPackage ./multi-object-tracking-lidar {};

 multimaster-fkie = self.callPackage ./multimaster-fkie {};

 multimaster-launch = self.callPackage ./multimaster-launch {};

 multimaster-msgs = self.callPackage ./multimaster-msgs {};

 multimaster-msgs-fkie = self.callPackage ./multimaster-msgs-fkie {};

 multires-image = self.callPackage ./multires-image {};

 multirobot-map-merge = self.callPackage ./multirobot-map-merge {};

 multisense = self.callPackage ./multisense {};

 multisense-bringup = self.callPackage ./multisense-bringup {};

 multisense-cal-check = self.callPackage ./multisense-cal-check {};

 multisense-description = self.callPackage ./multisense-description {};

 multisense-lib = self.callPackage ./multisense-lib {};

 multisense-ros = self.callPackage ./multisense-ros {};

 mvsim = self.callPackage ./mvsim {};

 nanomsg = self.callPackage ./nanomsg {};

 nao-meshes = self.callPackage ./nao-meshes {};

 naoqi-bridge-msgs = self.callPackage ./naoqi-bridge-msgs {};

 naoqi-driver = self.callPackage ./naoqi-driver {};

 naoqi-libqi = self.callPackage ./naoqi-libqi {};

 naoqi-libqicore = self.callPackage ./naoqi-libqicore {};

 nav2d = self.callPackage ./nav2d {};

 nav2d-exploration = self.callPackage ./nav2d-exploration {};

 nav2d-karto = self.callPackage ./nav2d-karto {};

 nav2d-localizer = self.callPackage ./nav2d-localizer {};

 nav2d-msgs = self.callPackage ./nav2d-msgs {};

 nav2d-navigator = self.callPackage ./nav2d-navigator {};

 nav2d-operator = self.callPackage ./nav2d-operator {};

 nav2d-remote = self.callPackage ./nav2d-remote {};

 nav2d-tutorials = self.callPackage ./nav2d-tutorials {};

 nav-2d-msgs = self.callPackage ./nav-2d-msgs {};

 nav-2d-utils = self.callPackage ./nav-2d-utils {};

 nav-core = self.callPackage ./nav-core {};

 nav-core2 = self.callPackage ./nav-core2 {};

 nav-core-adapter = self.callPackage ./nav-core-adapter {};

 nav-grid = self.callPackage ./nav-grid {};

 nav-grid-iterators = self.callPackage ./nav-grid-iterators {};

 nav-grid-pub-sub = self.callPackage ./nav-grid-pub-sub {};

 nav-grid-server = self.callPackage ./nav-grid-server {};

 nav-msgs = self.callPackage ./nav-msgs {};

 navfn = self.callPackage ./navfn {};

 navigation = self.callPackage ./navigation {};

 navigation-experimental = self.callPackage ./navigation-experimental {};

 navigation-layers = self.callPackage ./navigation-layers {};

 navigation-stage = self.callPackage ./navigation-stage {};

 navigation-tutorials = self.callPackage ./navigation-tutorials {};

 ncd-parser = self.callPackage ./ncd-parser {};

 neo-local-planner = self.callPackage ./neo-local-planner {};

 neobotix-usboard-msgs = self.callPackage ./neobotix-usboard-msgs {};

 neonavigation = self.callPackage ./neonavigation {};

 neonavigation-common = self.callPackage ./neonavigation-common {};

 neonavigation-launch = self.callPackage ./neonavigation-launch {};

 neonavigation-msgs = self.callPackage ./neonavigation-msgs {};

 neonavigation-rviz-plugins = self.callPackage ./neonavigation-rviz-plugins {};

 nerian-stereo = self.callPackage ./nerian-stereo {};

 network-autoconfig = self.callPackage ./network-autoconfig {};

 network-control-tests = self.callPackage ./network-control-tests {};

 network-detector = self.callPackage ./network-detector {};

 network-interface = self.callPackage ./network-interface {};

 network-monitor-udp = self.callPackage ./network-monitor-udp {};

 network-traffic-control = self.callPackage ./network-traffic-control {};

 nextage-description = self.callPackage ./nextage-description {};

 nextage-gazebo = self.callPackage ./nextage-gazebo {};

 nextage-ik-plugin = self.callPackage ./nextage-ik-plugin {};

 nextage-moveit-config = self.callPackage ./nextage-moveit-config {};

 nextage-ros-bridge = self.callPackage ./nextage-ros-bridge {};

 nlopt = self.callPackage ./nlopt {};

 nmc-nlp-lite = self.callPackage ./nmc-nlp-lite {};

 nmea-comms = self.callPackage ./nmea-comms {};

 nmea-gps-plugin = self.callPackage ./nmea-gps-plugin {};

 nmea-msgs = self.callPackage ./nmea-msgs {};

 nmea-navsat-driver = self.callPackage ./nmea-navsat-driver {};

 nmea-to-geopose = self.callPackage ./nmea-to-geopose {};

 node-manager-fkie = self.callPackage ./node-manager-fkie {};

 nodelet = self.callPackage ./nodelet {};

 nodelet-core = self.callPackage ./nodelet-core {};

 nodelet-topic-tools = self.callPackage ./nodelet-topic-tools {};

 nodelet-tutorial-math = self.callPackage ./nodelet-tutorial-math {};

 nonpersistent-voxel-layer = self.callPackage ./nonpersistent-voxel-layer {};

 novatel-gps-driver = self.callPackage ./novatel-gps-driver {};

 novatel-gps-msgs = self.callPackage ./novatel-gps-msgs {};

 novatel-msgs = self.callPackage ./novatel-msgs {};

 novatel-oem7-driver = self.callPackage ./novatel-oem7-driver {};

 novatel-oem7-msgs = self.callPackage ./novatel-oem7-msgs {};

 ntpd-driver = self.callPackage ./ntpd-driver {};

 obj-to-pointcloud = self.callPackage ./obj-to-pointcloud {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 ocean-battery-driver = self.callPackage ./ocean-battery-driver {};

 octomap = self.callPackage ./octomap {};

 octomap-mapping = self.callPackage ./octomap-mapping {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octomap-ros = self.callPackage ./octomap-ros {};

 octomap-rviz-plugins = self.callPackage ./octomap-rviz-plugins {};

 octomap-server = self.callPackage ./octomap-server {};

 octovis = self.callPackage ./octovis {};

 odom-frame-publisher = self.callPackage ./odom-frame-publisher {};

 odometry-publisher-tutorial = self.callPackage ./odometry-publisher-tutorial {};

 odva-ethernetip = self.callPackage ./odva-ethernetip {};

 omnibase-control = self.callPackage ./omnibase-control {};

 omnibase-description = self.callPackage ./omnibase-description {};

 omnibase-gazebo = self.callPackage ./omnibase-gazebo {};

 ompl = self.callPackage ./ompl {};

 omron-os32c-driver = self.callPackage ./omron-os32c-driver {};

 open-karto = self.callPackage ./open-karto {};

 open-manipulator = self.callPackage ./open-manipulator {};

 open-manipulator-control-gui = self.callPackage ./open-manipulator-control-gui {};

 open-manipulator-controller = self.callPackage ./open-manipulator-controller {};

 open-manipulator-description = self.callPackage ./open-manipulator-description {};

 open-manipulator-gazebo = self.callPackage ./open-manipulator-gazebo {};

 open-manipulator-libs = self.callPackage ./open-manipulator-libs {};

 open-manipulator-moveit = self.callPackage ./open-manipulator-moveit {};

 open-manipulator-msgs = self.callPackage ./open-manipulator-msgs {};

 open-manipulator-p = self.callPackage ./open-manipulator-p {};

 open-manipulator-p-control-gui = self.callPackage ./open-manipulator-p-control-gui {};

 open-manipulator-p-controller = self.callPackage ./open-manipulator-p-controller {};

 open-manipulator-p-description = self.callPackage ./open-manipulator-p-description {};

 open-manipulator-p-gazebo = self.callPackage ./open-manipulator-p-gazebo {};

 open-manipulator-p-libs = self.callPackage ./open-manipulator-p-libs {};

 open-manipulator-p-simulations = self.callPackage ./open-manipulator-p-simulations {};

 open-manipulator-p-teleop = self.callPackage ./open-manipulator-p-teleop {};

 open-manipulator-simulations = self.callPackage ./open-manipulator-simulations {};

 open-manipulator-teleop = self.callPackage ./open-manipulator-teleop {};

 open-manipulator-with-tb3 = self.callPackage ./open-manipulator-with-tb3 {};

 open-manipulator-with-tb3-description = self.callPackage ./open-manipulator-with-tb3-description {};

 open-manipulator-with-tb3-gazebo = self.callPackage ./open-manipulator-with-tb3-gazebo {};

 open-manipulator-with-tb3-simulations = self.callPackage ./open-manipulator-with-tb3-simulations {};

 open-manipulator-with-tb3-tools = self.callPackage ./open-manipulator-with-tb3-tools {};

 open-manipulator-with-tb3-waffle-moveit = self.callPackage ./open-manipulator-with-tb3-waffle-moveit {};

 open-manipulator-with-tb3-waffle-pi-moveit = self.callPackage ./open-manipulator-with-tb3-waffle-pi-moveit {};

 opencv-apps = self.callPackage ./opencv-apps {};

 opengm = self.callPackage ./opengm {};

 openni2-camera = self.callPackage ./openni2-camera {};

 openni2-launch = self.callPackage ./openni2-launch {};

 openni-description = self.callPackage ./openni-description {};

 openni-launch = self.callPackage ./openni-launch {};

 openrtm-aist = self.callPackage ./openrtm-aist {};

 openrtm-ros-bridge = self.callPackage ./openrtm-ros-bridge {};

 openrtm-tools = self.callPackage ./openrtm-tools {};

 openslam-gmapping = self.callPackage ./openslam-gmapping {};

 openzen-sensor = self.callPackage ./openzen-sensor {};

 opt-camera = self.callPackage ./opt-camera {};

 optpp-catkin = self.callPackage ./optpp-catkin {};

 orocos-kdl = self.callPackage ./orocos-kdl {};

 orocos-kinematics-dynamics = self.callPackage ./orocos-kinematics-dynamics {};

 osg-interactive-markers = self.callPackage ./osg-interactive-markers {};

 osg-markers = self.callPackage ./osg-markers {};

 osg-utils = self.callPackage ./osg-utils {};

 osm-cartography = self.callPackage ./osm-cartography {};

 ouster-driver = self.callPackage ./ouster-driver {};

 oxford-gps-eth = self.callPackage ./oxford-gps-eth {};

 p2os-doc = self.callPackage ./p2os-doc {};

 p2os-driver = self.callPackage ./p2os-driver {};

 p2os-launch = self.callPackage ./p2os-launch {};

 p2os-msgs = self.callPackage ./p2os-msgs {};

 p2os-teleop = self.callPackage ./p2os-teleop {};

 p2os-urdf = self.callPackage ./p2os-urdf {};

 pacmod = self.callPackage ./pacmod {};

 pacmod3 = self.callPackage ./pacmod3 {};

 pacmod-game-control = self.callPackage ./pacmod-game-control {};

 pacmod-msgs = self.callPackage ./pacmod-msgs {};

 pal-carbon-collector = self.callPackage ./pal-carbon-collector {};

 pal-statistics = self.callPackage ./pal-statistics {};

 pal-statistics-msgs = self.callPackage ./pal-statistics-msgs {};

 panda-moveit-config = self.callPackage ./panda-moveit-config {};

 parameter-assertions = self.callPackage ./parameter-assertions {};

 parameter-pa = self.callPackage ./parameter-pa {};

 parrot-arsdk = self.callPackage ./parrot-arsdk {};

 pass-through-controllers = self.callPackage ./pass-through-controllers {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 pddl-msgs = self.callPackage ./pddl-msgs {};

 pddl-planner = self.callPackage ./pddl-planner {};

 pddl-planner-viewer = self.callPackage ./pddl-planner-viewer {};

 people = self.callPackage ./people {};

 people-msgs = self.callPackage ./people-msgs {};

 people-tracking-filter = self.callPackage ./people-tracking-filter {};

 people-velocity-tracker = self.callPackage ./people-velocity-tracker {};

 pepper-meshes = self.callPackage ./pepper-meshes {};

 pepperl-fuchs-r2000 = self.callPackage ./pepperl-fuchs-r2000 {};

 perception = self.callPackage ./perception {};

 perception-pcl = self.callPackage ./perception-pcl {};

 pf-driver = self.callPackage ./pf-driver {};

 pheeno-ros-description = self.callPackage ./pheeno-ros-description {};

 phidgets-api = self.callPackage ./phidgets-api {};

 phidgets-drivers = self.callPackage ./phidgets-drivers {};

 phidgets-high-speed-encoder = self.callPackage ./phidgets-high-speed-encoder {};

 phidgets-ik = self.callPackage ./phidgets-ik {};

 phidgets-imu = self.callPackage ./phidgets-imu {};

 phidgets-msgs = self.callPackage ./phidgets-msgs {};

 photo = self.callPackage ./photo {};

 pid = self.callPackage ./pid {};

 pilz-control = self.callPackage ./pilz-control {};

 pilz-extensions = self.callPackage ./pilz-extensions {};

 pilz-industrial-motion = self.callPackage ./pilz-industrial-motion {};

 pilz-industrial-motion-planner = self.callPackage ./pilz-industrial-motion-planner {};

 pilz-industrial-motion-planner-testutils = self.callPackage ./pilz-industrial-motion-planner-testutils {};

 pilz-industrial-motion-testutils = self.callPackage ./pilz-industrial-motion-testutils {};

 pilz-msgs = self.callPackage ./pilz-msgs {};

 pilz-robot-programming = self.callPackage ./pilz-robot-programming {};

 pilz-robots = self.callPackage ./pilz-robots {};

 pilz-status-indicator-rqt = self.callPackage ./pilz-status-indicator-rqt {};

 pilz-store-positions = self.callPackage ./pilz-store-positions {};

 pilz-testutils = self.callPackage ./pilz-testutils {};

 pilz-trajectory-generation = self.callPackage ./pilz-trajectory-generation {};

 pilz-utils = self.callPackage ./pilz-utils {};

 pincher-arm = self.callPackage ./pincher-arm {};

 pincher-arm-bringup = self.callPackage ./pincher-arm-bringup {};

 pincher-arm-description = self.callPackage ./pincher-arm-description {};

 pincher-arm-ikfast-plugin = self.callPackage ./pincher-arm-ikfast-plugin {};

 pincher-arm-moveit-config = self.callPackage ./pincher-arm-moveit-config {};

 pincher-arm-moveit-demos = self.callPackage ./pincher-arm-moveit-demos {};

 pinocchio = self.callPackage ./pinocchio {};

 planner-cspace = self.callPackage ./planner-cspace {};

 planner-cspace-msgs = self.callPackage ./planner-cspace-msgs {};

 play-motion = self.callPackage ./play-motion {};

 play-motion-builder = self.callPackage ./play-motion-builder {};

 play-motion-builder-msgs = self.callPackage ./play-motion-builder-msgs {};

 play-motion-msgs = self.callPackage ./play-motion-msgs {};

 plotjuggler = self.callPackage ./plotjuggler {};

 plotjuggler-msgs = self.callPackage ./plotjuggler-msgs {};

 plotjuggler-ros = self.callPackage ./plotjuggler-ros {};

 pluginlib = self.callPackage ./pluginlib {};

 pluginlib-tutorials = self.callPackage ./pluginlib-tutorials {};

 point-cloud-publisher-tutorial = self.callPackage ./point-cloud-publisher-tutorial {};

 pointcloud-to-laserscan = self.callPackage ./pointcloud-to-laserscan {};

 pointgrey-camera-description = self.callPackage ./pointgrey-camera-description {};

 pointgrey-camera-driver = self.callPackage ./pointgrey-camera-driver {};

 points-preprocessor = self.callPackage ./points-preprocessor {};

 polar-scan-matcher = self.callPackage ./polar-scan-matcher {};

 polled-camera = self.callPackage ./polled-camera {};

 pose-base-controller = self.callPackage ./pose-base-controller {};

 pose-cov-ops = self.callPackage ./pose-cov-ops {};

 pose-follower = self.callPackage ./pose-follower {};

 posedetection-msgs = self.callPackage ./posedetection-msgs {};

 position-controllers = self.callPackage ./position-controllers {};

 power-monitor = self.callPackage ./power-monitor {};

 power-msgs = self.callPackage ./power-msgs {};

 pr2-app-manager = self.callPackage ./pr2-app-manager {};

 pr2-apps = self.callPackage ./pr2-apps {};

 pr2-arm-kinematics = self.callPackage ./pr2-arm-kinematics {};

 pr2-arm-move-ik = self.callPackage ./pr2-arm-move-ik {};

 pr2-bringup = self.callPackage ./pr2-bringup {};

 pr2-bringup-tests = self.callPackage ./pr2-bringup-tests {};

 pr2-calibration = self.callPackage ./pr2-calibration {};

 pr2-calibration-controllers = self.callPackage ./pr2-calibration-controllers {};

 pr2-calibration-launch = self.callPackage ./pr2-calibration-launch {};

 pr2-camera-synchronizer = self.callPackage ./pr2-camera-synchronizer {};

 pr2-common = self.callPackage ./pr2-common {};

 pr2-common-action-msgs = self.callPackage ./pr2-common-action-msgs {};

 pr2-common-actions = self.callPackage ./pr2-common-actions {};

 pr2-computer-monitor = self.callPackage ./pr2-computer-monitor {};

 pr2-controller-configuration = self.callPackage ./pr2-controller-configuration {};

 pr2-controller-configuration-gazebo = self.callPackage ./pr2-controller-configuration-gazebo {};

 pr2-controller-interface = self.callPackage ./pr2-controller-interface {};

 pr2-controller-manager = self.callPackage ./pr2-controller-manager {};

 pr2-controllers = self.callPackage ./pr2-controllers {};

 pr2-controllers-msgs = self.callPackage ./pr2-controllers-msgs {};

 pr2-counterbalance-check = self.callPackage ./pr2-counterbalance-check {};

 pr2-dashboard-aggregator = self.callPackage ./pr2-dashboard-aggregator {};

 pr2-dense-laser-snapshotter = self.callPackage ./pr2-dense-laser-snapshotter {};

 pr2-description = self.callPackage ./pr2-description {};

 pr2-ethercat = self.callPackage ./pr2-ethercat {};

 pr2-ethercat-drivers = self.callPackage ./pr2-ethercat-drivers {};

 pr2-gazebo = self.callPackage ./pr2-gazebo {};

 pr2-gazebo-plugins = self.callPackage ./pr2-gazebo-plugins {};

 pr2-gripper-action = self.callPackage ./pr2-gripper-action {};

 pr2-gripper-sensor = self.callPackage ./pr2-gripper-sensor {};

 pr2-gripper-sensor-action = self.callPackage ./pr2-gripper-sensor-action {};

 pr2-gripper-sensor-controller = self.callPackage ./pr2-gripper-sensor-controller {};

 pr2-gripper-sensor-msgs = self.callPackage ./pr2-gripper-sensor-msgs {};

 pr2-hardware-interface = self.callPackage ./pr2-hardware-interface {};

 pr2-head-action = self.callPackage ./pr2-head-action {};

 pr2-kinematics = self.callPackage ./pr2-kinematics {};

 pr2-machine = self.callPackage ./pr2-machine {};

 pr2-mannequin-mode = self.callPackage ./pr2-mannequin-mode {};

 pr2-mechanism = self.callPackage ./pr2-mechanism {};

 pr2-mechanism-controllers = self.callPackage ./pr2-mechanism-controllers {};

 pr2-mechanism-diagnostics = self.callPackage ./pr2-mechanism-diagnostics {};

 pr2-mechanism-model = self.callPackage ./pr2-mechanism-model {};

 pr2-mechanism-msgs = self.callPackage ./pr2-mechanism-msgs {};

 pr2-motor-diagnostic-tool = self.callPackage ./pr2-motor-diagnostic-tool {};

 pr2-move-base = self.callPackage ./pr2-move-base {};

 pr2-moveit-config = self.callPackage ./pr2-moveit-config {};

 pr2-moveit-plugins = self.callPackage ./pr2-moveit-plugins {};

 pr2-msgs = self.callPackage ./pr2-msgs {};

 pr2-navigation = self.callPackage ./pr2-navigation {};

 pr2-navigation-config = self.callPackage ./pr2-navigation-config {};

 pr2-navigation-global = self.callPackage ./pr2-navigation-global {};

 pr2-navigation-local = self.callPackage ./pr2-navigation-local {};

 pr2-navigation-perception = self.callPackage ./pr2-navigation-perception {};

 pr2-navigation-self-filter = self.callPackage ./pr2-navigation-self-filter {};

 pr2-navigation-slam = self.callPackage ./pr2-navigation-slam {};

 pr2-navigation-teleop = self.callPackage ./pr2-navigation-teleop {};

 pr2-position-scripts = self.callPackage ./pr2-position-scripts {};

 pr2-power-board = self.callPackage ./pr2-power-board {};

 pr2-power-drivers = self.callPackage ./pr2-power-drivers {};

 pr2-robot = self.callPackage ./pr2-robot {};

 pr2-run-stop-auto-restart = self.callPackage ./pr2-run-stop-auto-restart {};

 pr2-se-calibration-launch = self.callPackage ./pr2-se-calibration-launch {};

 pr2-self-test = self.callPackage ./pr2-self-test {};

 pr2-self-test-msgs = self.callPackage ./pr2-self-test-msgs {};

 pr2-simulator = self.callPackage ./pr2-simulator {};

 pr2-teleop = self.callPackage ./pr2-teleop {};

 pr2-teleop-general = self.callPackage ./pr2-teleop-general {};

 pr2-tilt-laser-interface = self.callPackage ./pr2-tilt-laser-interface {};

 pr2-tuck-arms-action = self.callPackage ./pr2-tuck-arms-action {};

 pr2-tuckarm = self.callPackage ./pr2-tuckarm {};

 pr2eus = self.callPackage ./pr2eus {};

 pr2eus-moveit = self.callPackage ./pr2eus-moveit {};

 pr2eus-tutorials = self.callPackage ./pr2eus-tutorials {};

 prbt-gazebo = self.callPackage ./prbt-gazebo {};

 prbt-grippers = self.callPackage ./prbt-grippers {};

 prbt-hardware-support = self.callPackage ./prbt-hardware-support {};

 prbt-ikfast-manipulator-plugin = self.callPackage ./prbt-ikfast-manipulator-plugin {};

 prbt-moveit-config = self.callPackage ./prbt-moveit-config {};

 prbt-pg70-support = self.callPackage ./prbt-pg70-support {};

 prbt-support = self.callPackage ./prbt-support {};

 prosilica-camera = self.callPackage ./prosilica-camera {};

 prosilica-gige-sdk = self.callPackage ./prosilica-gige-sdk {};

 ps3joy = self.callPackage ./ps3joy {};

 psen-scan = self.callPackage ./psen-scan {};

 psen-scan-v2 = self.callPackage ./psen-scan-v2 {};

 px4-msgs = self.callPackage ./px4-msgs {};

 py-trees = self.callPackage ./py-trees {};

 py-trees-msgs = self.callPackage ./py-trees-msgs {};

 py-trees-ros = self.callPackage ./py-trees-ros {};

 pybind11-catkin = self.callPackage ./pybind11-catkin {};

 pyquaternion = self.callPackage ./pyquaternion {};

 pyros-test = self.callPackage ./pyros-test {};

 pyros-utils = self.callPackage ./pyros-utils {};

 python-orocos-kdl = self.callPackage ./python-orocos-kdl {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 qb-chain = self.callPackage ./qb-chain {};

 qb-chain-control = self.callPackage ./qb-chain-control {};

 qb-chain-description = self.callPackage ./qb-chain-description {};

 qb-device = self.callPackage ./qb-device {};

 qb-device-bringup = self.callPackage ./qb-device-bringup {};

 qb-device-control = self.callPackage ./qb-device-control {};

 qb-device-description = self.callPackage ./qb-device-description {};

 qb-device-driver = self.callPackage ./qb-device-driver {};

 qb-device-hardware-interface = self.callPackage ./qb-device-hardware-interface {};

 qb-device-msgs = self.callPackage ./qb-device-msgs {};

 qb-device-srvs = self.callPackage ./qb-device-srvs {};

 qb-device-utils = self.callPackage ./qb-device-utils {};

 qb-hand = self.callPackage ./qb-hand {};

 qb-hand-control = self.callPackage ./qb-hand-control {};

 qb-hand-description = self.callPackage ./qb-hand-description {};

 qb-hand-hardware-interface = self.callPackage ./qb-hand-hardware-interface {};

 qb-move = self.callPackage ./qb-move {};

 qb-move-control = self.callPackage ./qb-move-control {};

 qb-move-description = self.callPackage ./qb-move-description {};

 qb-move-hardware-interface = self.callPackage ./qb-move-hardware-interface {};

 qpmad = self.callPackage ./qpmad {};

 qpoases-vendor = self.callPackage ./qpoases-vendor {};

 qt-build = self.callPackage ./qt-build {};

 qt-create = self.callPackage ./qt-create {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 qt-paramedit = self.callPackage ./qt-paramedit {};

 qt-qmake = self.callPackage ./qt-qmake {};

 qt-ros = self.callPackage ./qt-ros {};

 qt-tutorials = self.callPackage ./qt-tutorials {};

 quanergy-client = self.callPackage ./quanergy-client {};

 quanergy-client-ros = self.callPackage ./quanergy-client-ros {};

 quaternion-operation = self.callPackage ./quaternion-operation {};

 qwt-dependency = self.callPackage ./qwt-dependency {};

 radar-msgs = self.callPackage ./radar-msgs {};

 radar-omnipresense = self.callPackage ./radar-omnipresense {};

 radial-menu = self.callPackage ./radial-menu {};

 radial-menu-backend = self.callPackage ./radial-menu-backend {};

 radial-menu-example = self.callPackage ./radial-menu-example {};

 radial-menu-model = self.callPackage ./radial-menu-model {};

 radial-menu-msgs = self.callPackage ./radial-menu-msgs {};

 radial-menu-rviz = self.callPackage ./radial-menu-rviz {};

 rail-manipulation-msgs = self.callPackage ./rail-manipulation-msgs {};

 rail-mesh-icp = self.callPackage ./rail-mesh-icp {};

 rail-segmentation = self.callPackage ./rail-segmentation {};

 random-numbers = self.callPackage ./random-numbers {};

 range-sensor-layer = self.callPackage ./range-sensor-layer {};

 raw-description = self.callPackage ./raw-description {};

 razor-imu-9dof = self.callPackage ./razor-imu-9dof {};

 rc-cloud-accumulator = self.callPackage ./rc-cloud-accumulator {};

 rc-common-msgs = self.callPackage ./rc-common-msgs {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rc-genicam-camera = self.callPackage ./rc-genicam-camera {};

 rc-genicam-driver = self.callPackage ./rc-genicam-driver {};

 rc-hand-eye-calibration-client = self.callPackage ./rc-hand-eye-calibration-client {};

 rc-pick-client = self.callPackage ./rc-pick-client {};

 rc-reason-clients = self.callPackage ./rc-reason-clients {};

 rc-reason-msgs = self.callPackage ./rc-reason-msgs {};

 rc-roi-manager-gui = self.callPackage ./rc-roi-manager-gui {};

 rc-silhouettematch-client = self.callPackage ./rc-silhouettematch-client {};

 rc-tagdetect-client = self.callPackage ./rc-tagdetect-client {};

 rc-visard = self.callPackage ./rc-visard {};

 rc-visard-description = self.callPackage ./rc-visard-description {};

 rc-visard-driver = self.callPackage ./rc-visard-driver {};

 rcdiscover = self.callPackage ./rcdiscover {};

 rdl = self.callPackage ./rdl {};

 rdl-benchmark = self.callPackage ./rdl-benchmark {};

 rdl-cmake = self.callPackage ./rdl-cmake {};

 rdl-dynamics = self.callPackage ./rdl-dynamics {};

 rdl-msgs = self.callPackage ./rdl-msgs {};

 rdl-ros-tools = self.callPackage ./rdl-ros-tools {};

 rdl-urdfreader = self.callPackage ./rdl-urdfreader {};

 realsense2-camera = self.callPackage ./realsense2-camera {};

 realsense2-description = self.callPackage ./realsense2-description {};

 realtime-tools = self.callPackage ./realtime-tools {};

 recorder-msgs = self.callPackage ./recorder-msgs {};

 remote-rosbag-record = self.callPackage ./remote-rosbag-record {};

 resized-image-transport = self.callPackage ./resized-image-transport {};

 resource-retriever = self.callPackage ./resource-retriever {};

 rexrov2-control = self.callPackage ./rexrov2-control {};

 rexrov2-description = self.callPackage ./rexrov2-description {};

 rexrov2-gazebo = self.callPackage ./rexrov2-gazebo {};

 rgbd-launch = self.callPackage ./rgbd-launch {};

 ridgeback-cartographer-navigation = self.callPackage ./ridgeback-cartographer-navigation {};

 ridgeback-control = self.callPackage ./ridgeback-control {};

 ridgeback-description = self.callPackage ./ridgeback-description {};

 ridgeback-desktop = self.callPackage ./ridgeback-desktop {};

 ridgeback-gazebo = self.callPackage ./ridgeback-gazebo {};

 ridgeback-gazebo-plugins = self.callPackage ./ridgeback-gazebo-plugins {};

 ridgeback-msgs = self.callPackage ./ridgeback-msgs {};

 ridgeback-navigation = self.callPackage ./ridgeback-navigation {};

 ridgeback-simulator = self.callPackage ./ridgeback-simulator {};

 ridgeback-viz = self.callPackage ./ridgeback-viz {};

 robomaker-simulation-msgs = self.callPackage ./robomaker-simulation-msgs {};

 robosense-description = self.callPackage ./robosense-description {};

 robosense-gazebo-plugins = self.callPackage ./robosense-gazebo-plugins {};

 robosense-simulator = self.callPackage ./robosense-simulator {};

 robot = self.callPackage ./robot {};

 robot-activity = self.callPackage ./robot-activity {};

 robot-activity-msgs = self.callPackage ./robot-activity-msgs {};

 robot-activity-tutorials = self.callPackage ./robot-activity-tutorials {};

 robot-body-filter = self.callPackage ./robot-body-filter {};

 robot-calibration = self.callPackage ./robot-calibration {};

 robot-calibration-msgs = self.callPackage ./robot-calibration-msgs {};

 robot-controllers = self.callPackage ./robot-controllers {};

 robot-controllers-interface = self.callPackage ./robot-controllers-interface {};

 robot-controllers-msgs = self.callPackage ./robot-controllers-msgs {};

 robot-localization = self.callPackage ./robot-localization {};

 robot-mechanism-controllers = self.callPackage ./robot-mechanism-controllers {};

 robot-nav-rviz-plugins = self.callPackage ./robot-nav-rviz-plugins {};

 robot-nav-tools = self.callPackage ./robot-nav-tools {};

 robot-nav-viz-demos = self.callPackage ./robot-nav-viz-demos {};

 robot-navigation = self.callPackage ./robot-navigation {};

 robot-one = self.callPackage ./robot-one {};

 robot-pose-ekf = self.callPackage ./robot-pose-ekf {};

 robot-self-filter = self.callPackage ./robot-self-filter {};

 robot-setup-tf-tutorial = self.callPackage ./robot-setup-tf-tutorial {};

 robot-state-publisher = self.callPackage ./robot-state-publisher {};

 robot-statemachine = self.callPackage ./robot-statemachine {};

 robot-upstart = self.callPackage ./robot-upstart {};

 roboticsgroup-upatras-gazebo-plugins = self.callPackage ./roboticsgroup-upatras-gazebo-plugins {};

 robotis-manipulator = self.callPackage ./robotis-manipulator {};

 robotont-description = self.callPackage ./robotont-description {};

 robotont-gazebo = self.callPackage ./robotont-gazebo {};

 robotont-msgs = self.callPackage ./robotont-msgs {};

 robotont-nuc-description = self.callPackage ./robotont-nuc-description {};

 rocon-app-manager-msgs = self.callPackage ./rocon-app-manager-msgs {};

 rocon-bubble-icons = self.callPackage ./rocon-bubble-icons {};

 rocon-console = self.callPackage ./rocon-console {};

 rocon-device-msgs = self.callPackage ./rocon-device-msgs {};

 rocon-ebnf = self.callPackage ./rocon-ebnf {};

 rocon-icons = self.callPackage ./rocon-icons {};

 rocon-interaction-msgs = self.callPackage ./rocon-interaction-msgs {};

 rocon-interactions = self.callPackage ./rocon-interactions {};

 rocon-launch = self.callPackage ./rocon-launch {};

 rocon-master-info = self.callPackage ./rocon-master-info {};

 rocon-msgs = self.callPackage ./rocon-msgs {};

 rocon-python-comms = self.callPackage ./rocon-python-comms {};

 rocon-python-redis = self.callPackage ./rocon-python-redis {};

 rocon-python-utils = self.callPackage ./rocon-python-utils {};

 rocon-python-wifi = self.callPackage ./rocon-python-wifi {};

 rocon-semantic-version = self.callPackage ./rocon-semantic-version {};

 rocon-service-pair-msgs = self.callPackage ./rocon-service-pair-msgs {};

 rocon-std-msgs = self.callPackage ./rocon-std-msgs {};

 rocon-tools = self.callPackage ./rocon-tools {};

 rocon-tutorial-msgs = self.callPackage ./rocon-tutorial-msgs {};

 rocon-uri = self.callPackage ./rocon-uri {};

 rokubimini = self.callPackage ./rokubimini {};

 rokubimini-bus-manager = self.callPackage ./rokubimini-bus-manager {};

 rokubimini-description = self.callPackage ./rokubimini-description {};

 rokubimini-ethercat = self.callPackage ./rokubimini-ethercat {};

 rokubimini-msgs = self.callPackage ./rokubimini-msgs {};

 rokubimini-serial = self.callPackage ./rokubimini-serial {};

 roomba-stage = self.callPackage ./roomba-stage {};

 ros = self.callPackage ./ros {};

 ros-babel-fish = self.callPackage ./ros-babel-fish {};

 ros-babel-fish-test-msgs = self.callPackage ./ros-babel-fish-test-msgs {};

 ros-base = self.callPackage ./ros-base {};

 ros-canopen = self.callPackage ./ros-canopen {};

 ros-comm = self.callPackage ./ros-comm {};

 ros-control = self.callPackage ./ros-control {};

 ros-control-boilerplate = self.callPackage ./ros-control-boilerplate {};

 ros-controllers = self.callPackage ./ros-controllers {};

 ros-controllers-cartesian = self.callPackage ./ros-controllers-cartesian {};

 ros-core = self.callPackage ./ros-core {};

 ros-emacs-utils = self.callPackage ./ros-emacs-utils {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-ethercat-eml = self.callPackage ./ros-ethercat-eml {};

 ros-introspection = self.callPackage ./ros-introspection {};

 ros-monitoring-msgs = self.callPackage ./ros-monitoring-msgs {};

 ros-numpy = self.callPackage ./ros-numpy {};

 ros-pytest = self.callPackage ./ros-pytest {};

 ros-realtime = self.callPackage ./ros-realtime {};

 ros-reflexxes = self.callPackage ./ros-reflexxes {};

 ros-tutorials = self.callPackage ./ros-tutorials {};

 ros-type-introspection = self.callPackage ./ros-type-introspection {};

 rosapi = self.callPackage ./rosapi {};

 rosatomic = self.callPackage ./rosatomic {};

 rosauth = self.callPackage ./rosauth {};

 rosbag = self.callPackage ./rosbag {};

 rosbag-cloud-recorders = self.callPackage ./rosbag-cloud-recorders {};

 rosbag-editor = self.callPackage ./rosbag-editor {};

 rosbag-fancy = self.callPackage ./rosbag-fancy {};

 rosbag-migration-rule = self.callPackage ./rosbag-migration-rule {};

 rosbag-pandas = self.callPackage ./rosbag-pandas {};

 rosbag-snapshot = self.callPackage ./rosbag-snapshot {};

 rosbag-snapshot-msgs = self.callPackage ./rosbag-snapshot-msgs {};

 rosbag-storage = self.callPackage ./rosbag-storage {};

 rosbaglive = self.callPackage ./rosbaglive {};

 rosbash = self.callPackage ./rosbash {};

 rosbash-params = self.callPackage ./rosbash-params {};

 rosboost-cfg = self.callPackage ./rosboost-cfg {};

 rosbridge-library = self.callPackage ./rosbridge-library {};

 rosbridge-msgs = self.callPackage ./rosbridge-msgs {};

 rosbridge-server = self.callPackage ./rosbridge-server {};

 rosbridge-suite = self.callPackage ./rosbridge-suite {};

 rosbuild = self.callPackage ./rosbuild {};

 rosclean = self.callPackage ./rosclean {};

 roscompile = self.callPackage ./roscompile {};

 rosconsole = self.callPackage ./rosconsole {};

 rosconsole-bridge = self.callPackage ./rosconsole-bridge {};

 roscpp = self.callPackage ./roscpp {};

 roscpp-core = self.callPackage ./roscpp-core {};

 roscpp-serialization = self.callPackage ./roscpp-serialization {};

 roscpp-traits = self.callPackage ./roscpp-traits {};

 roscpp-tutorials = self.callPackage ./roscpp-tutorials {};

 roscreate = self.callPackage ./roscreate {};

 rosdiagnostic = self.callPackage ./rosdiagnostic {};

 rosee-msg = self.callPackage ./rosee-msg {};

 rosemacs = self.callPackage ./rosemacs {};

 roseus = self.callPackage ./roseus {};

 roseus-mongo = self.callPackage ./roseus-mongo {};

 roseus-smach = self.callPackage ./roseus-smach {};

 roseus-tutorials = self.callPackage ./roseus-tutorials {};

 rosflight = self.callPackage ./rosflight {};

 rosflight-firmware = self.callPackage ./rosflight-firmware {};

 rosflight-msgs = self.callPackage ./rosflight-msgs {};

 rosflight-pkgs = self.callPackage ./rosflight-pkgs {};

 rosflight-sim = self.callPackage ./rosflight-sim {};

 rosflight-utils = self.callPackage ./rosflight-utils {};

 rosfmt = self.callPackage ./rosfmt {};

 rosgraph = self.callPackage ./rosgraph {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 roslang = self.callPackage ./roslang {};

 roslaunch = self.callPackage ./roslaunch {};

 roslib = self.callPackage ./roslib {};

 roslint = self.callPackage ./roslint {};

 roslisp = self.callPackage ./roslisp {};

 roslisp-common = self.callPackage ./roslisp-common {};

 roslisp-repl = self.callPackage ./roslisp-repl {};

 roslisp-utilities = self.callPackage ./roslisp-utilities {};

 roslz4 = self.callPackage ./roslz4 {};

 rosmake = self.callPackage ./rosmake {};

 rosmaster = self.callPackage ./rosmaster {};

 rosmon = self.callPackage ./rosmon {};

 rosmon-core = self.callPackage ./rosmon-core {};

 rosmon-msgs = self.callPackage ./rosmon-msgs {};

 rosmsg = self.callPackage ./rosmsg {};

 rosnode = self.callPackage ./rosnode {};

 rosnode-rtc = self.callPackage ./rosnode-rtc {};

 rosout = self.callPackage ./rosout {};

 rospack = self.callPackage ./rospack {};

 rosparam = self.callPackage ./rosparam {};

 rosparam-handler = self.callPackage ./rosparam-handler {};

 rosparam-shortcuts = self.callPackage ./rosparam-shortcuts {};

 rospatlite = self.callPackage ./rospatlite {};

 rosping = self.callPackage ./rosping {};

 rospy = self.callPackage ./rospy {};

 rospy-message-converter = self.callPackage ./rospy-message-converter {};

 rospy-tutorials = self.callPackage ./rospy-tutorials {};

 rosrt = self.callPackage ./rosrt {};

 rosserial = self.callPackage ./rosserial {};

 rosserial-arduino = self.callPackage ./rosserial-arduino {};

 rosserial-client = self.callPackage ./rosserial-client {};

 rosserial-embeddedlinux = self.callPackage ./rosserial-embeddedlinux {};

 rosserial-mbed = self.callPackage ./rosserial-mbed {};

 rosserial-msgs = self.callPackage ./rosserial-msgs {};

 rosserial-python = self.callPackage ./rosserial-python {};

 rosserial-server = self.callPackage ./rosserial-server {};

 rosserial-tivac = self.callPackage ./rosserial-tivac {};

 rosserial-vex-cortex = self.callPackage ./rosserial-vex-cortex {};

 rosserial-vex-v5 = self.callPackage ./rosserial-vex-v5 {};

 rosserial-windows = self.callPackage ./rosserial-windows {};

 rosserial-xbee = self.callPackage ./rosserial-xbee {};

 rosservice = self.callPackage ./rosservice {};

 rostate-machine = self.callPackage ./rostate-machine {};

 rostest = self.callPackage ./rostest {};

 rostest-node-interface-validation = self.callPackage ./rostest-node-interface-validation {};

 rosthrottle = self.callPackage ./rosthrottle {};

 rostime = self.callPackage ./rostime {};

 rostopic = self.callPackage ./rostopic {};

 rosunit = self.callPackage ./rosunit {};

 roswtf = self.callPackage ./roswtf {};

 roswww = self.callPackage ./roswww {};

 roswww-static = self.callPackage ./roswww-static {};

 rotate-recovery = self.callPackage ./rotate-recovery {};

 rotors-comm = self.callPackage ./rotors-comm {};

 rotors-control = self.callPackage ./rotors-control {};

 rotors-description = self.callPackage ./rotors-description {};

 rotors-evaluation = self.callPackage ./rotors-evaluation {};

 rotors-gazebo = self.callPackage ./rotors-gazebo {};

 rotors-gazebo-plugins = self.callPackage ./rotors-gazebo-plugins {};

 rotors-hil-interface = self.callPackage ./rotors-hil-interface {};

 rotors-joy-interface = self.callPackage ./rotors-joy-interface {};

 rotors-simulator = self.callPackage ./rotors-simulator {};

 route-network = self.callPackage ./route-network {};

 rplidar-ros = self.callPackage ./rplidar-ros {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-bag = self.callPackage ./rqt-bag {};

 rqt-bag-plugins = self.callPackage ./rqt-bag-plugins {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-controller-manager = self.callPackage ./rqt-controller-manager {};

 rqt-dep = self.callPackage ./rqt-dep {};

 rqt-drone-teleop = self.callPackage ./rqt-drone-teleop {};

 rqt-ez-publisher = self.callPackage ./rqt-ez-publisher {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-ground-robot-teleop = self.callPackage ./rqt-ground-robot-teleop {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-joint-trajectory-controller = self.callPackage ./rqt-joint-trajectory-controller {};

 rqt-joint-trajectory-plot = self.callPackage ./rqt-joint-trajectory-plot {};

 rqt-launch = self.callPackage ./rqt-launch {};

 rqt-launchtree = self.callPackage ./rqt-launchtree {};

 rqt-logger-level = self.callPackage ./rqt-logger-level {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-multiplot = self.callPackage ./rqt-multiplot {};

 rqt-nav-view = self.callPackage ./rqt-nav-view {};

 rqt-paramedit = self.callPackage ./rqt-paramedit {};

 rqt-play-motion-builder = self.callPackage ./rqt-play-motion-builder {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-pose-view = self.callPackage ./rqt-pose-view {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-py-trees = self.callPackage ./rqt-py-trees {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-monitor = self.callPackage ./rqt-robot-monitor {};

 rqt-robot-plugins = self.callPackage ./rqt-robot-plugins {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-rosmon = self.callPackage ./rqt-rosmon {};

 rqt-rotors = self.callPackage ./rqt-rotors {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-rviz = self.callPackage ./rqt-rviz {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-tf-tree = self.callPackage ./rqt-tf-tree {};

 rqt-top = self.callPackage ./rqt-top {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rqt-virtual-joy = self.callPackage ./rqt-virtual-joy {};

 rqt-web = self.callPackage ./rqt-web {};

 rr-control-input-manager = self.callPackage ./rr-control-input-manager {};

 rr-openrover-description = self.callPackage ./rr-openrover-description {};

 rr-openrover-driver = self.callPackage ./rr-openrover-driver {};

 rr-openrover-driver-msgs = self.callPackage ./rr-openrover-driver-msgs {};

 rr-openrover-simulation = self.callPackage ./rr-openrover-simulation {};

 rr-openrover-stack = self.callPackage ./rr-openrover-stack {};

 rr-rover-zero-driver = self.callPackage ./rr-rover-zero-driver {};

 rslidar = self.callPackage ./rslidar {};

 rslidar-driver = self.callPackage ./rslidar-driver {};

 rslidar-msgs = self.callPackage ./rslidar-msgs {};

 rslidar-pointcloud = self.callPackage ./rslidar-pointcloud {};

 rsm-additions = self.callPackage ./rsm-additions {};

 rsm-core = self.callPackage ./rsm-core {};

 rsm-msgs = self.callPackage ./rsm-msgs {};

 rsm-rqt-plugins = self.callPackage ./rsm-rqt-plugins {};

 rsm-rviz-plugins = self.callPackage ./rsm-rviz-plugins {};

 rt-usb-9axisimu-driver = self.callPackage ./rt-usb-9axisimu-driver {};

 rtabmap-ros = self.callPackage ./rtabmap-ros {};

 rtcm-msgs = self.callPackage ./rtcm-msgs {};

 rtmbuild = self.callPackage ./rtmbuild {};

 rtmros-common = self.callPackage ./rtmros-common {};

 rtmros-hironx = self.callPackage ./rtmros-hironx {};

 rtmros-nextage = self.callPackage ./rtmros-nextage {};

 ruckig = self.callPackage ./ruckig {};

 rviz = self.callPackage ./rviz {};

 rviz-animated-view-controller = self.callPackage ./rviz-animated-view-controller {};

 rviz-imu-plugin = self.callPackage ./rviz-imu-plugin {};

 rviz-mesh-plugin = self.callPackage ./rviz-mesh-plugin {};

 rviz-plugin-tutorials = self.callPackage ./rviz-plugin-tutorials {};

 rviz-python-tutorial = self.callPackage ./rviz-python-tutorial {};

 rviz-satellite = self.callPackage ./rviz-satellite {};

 rviz-visual-tools = self.callPackage ./rviz-visual-tools {};

 rx-service-tools = self.callPackage ./rx-service-tools {};

 rxcpp-vendor = self.callPackage ./rxcpp-vendor {};

 rxros = self.callPackage ./rxros {};

 rxros-tf = self.callPackage ./rxros-tf {};

 s3-common = self.callPackage ./s3-common {};

 s3-file-uploader = self.callPackage ./s3-file-uploader {};

 safe-teleop-base = self.callPackage ./safe-teleop-base {};

 safe-teleop-pr2 = self.callPackage ./safe-teleop-pr2 {};

 safe-teleop-stage = self.callPackage ./safe-teleop-stage {};

 safety-limiter = self.callPackage ./safety-limiter {};

 safety-limiter-msgs = self.callPackage ./safety-limiter-msgs {};

 sainsmart-relay-usb = self.callPackage ./sainsmart-relay-usb {};

 sand-island = self.callPackage ./sand-island {};

 sbg-driver = self.callPackage ./sbg-driver {};

 sbpl = self.callPackage ./sbpl {};

 sbpl-lattice-planner = self.callPackage ./sbpl-lattice-planner {};

 sbpl-recovery = self.callPackage ./sbpl-recovery {};

 scaled-controllers = self.callPackage ./scaled-controllers {};

 scaled-joint-trajectory-controller = self.callPackage ./scaled-joint-trajectory-controller {};

 scan-to-cloud-converter = self.callPackage ./scan-to-cloud-converter {};

 scan-tools = self.callPackage ./scan-tools {};

 scenario-test-tools = self.callPackage ./scenario-test-tools {};

 scheduler-msgs = self.callPackage ./scheduler-msgs {};

 schunk-description = self.callPackage ./schunk-description {};

 schunk-libm5api = self.callPackage ./schunk-libm5api {};

 schunk-modular-robotics = self.callPackage ./schunk-modular-robotics {};

 schunk-powercube-chain = self.callPackage ./schunk-powercube-chain {};

 schunk-sdh = self.callPackage ./schunk-sdh {};

 schunk-simulated-tactile-sensors = self.callPackage ./schunk-simulated-tactile-sensors {};

 sdc21x0 = self.callPackage ./sdc21x0 {};

 sdhlibrary-cpp = self.callPackage ./sdhlibrary-cpp {};

 seed-r7-bringup = self.callPackage ./seed-r7-bringup {};

 seed-r7-description = self.callPackage ./seed-r7-description {};

 seed-r7-moveit-config = self.callPackage ./seed-r7-moveit-config {};

 seed-r7-navigation = self.callPackage ./seed-r7-navigation {};

 seed-r7-robot-interface = self.callPackage ./seed-r7-robot-interface {};

 seed-r7-ros-controller = self.callPackage ./seed-r7-ros-controller {};

 seed-r7-ros-pkg = self.callPackage ./seed-r7-ros-pkg {};

 seed-r7-samples = self.callPackage ./seed-r7-samples {};

 seed-r7-typef-moveit-config = self.callPackage ./seed-r7-typef-moveit-config {};

 seed-smartactuator-sdk = self.callPackage ./seed-smartactuator-sdk {};

 self-test = self.callPackage ./self-test {};

 semantic-point-annotator = self.callPackage ./semantic-point-annotator {};

 sensor-filters = self.callPackage ./sensor-filters {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 septentrio-gnss-driver = self.callPackage ./septentrio-gnss-driver {};

 serial = self.callPackage ./serial {};

 service-tools = self.callPackage ./service-tools {};

 sesame-ros = self.callPackage ./sesame-ros {};

 settlerlib = self.callPackage ./settlerlib {};

 shape-msgs = self.callPackage ./shape-msgs {};

 sick-safetyscanners = self.callPackage ./sick-safetyscanners {};

 sick-scan = self.callPackage ./sick-scan {};

 sick-tim = self.callPackage ./sick-tim {};

 simple-grasping = self.callPackage ./simple-grasping {};

 simple-message = self.callPackage ./simple-message {};

 simple-navigation-goals-tutorial = self.callPackage ./simple-navigation-goals-tutorial {};

 simulators = self.callPackage ./simulators {};

 single-joint-position-action = self.callPackage ./single-joint-position-action {};

 slam-gmapping = self.callPackage ./slam-gmapping {};

 slam-karto = self.callPackage ./slam-karto {};

 slam-toolbox = self.callPackage ./slam-toolbox {};

 slam-toolbox-msgs = self.callPackage ./slam-toolbox-msgs {};

 slic = self.callPackage ./slic {};

 slime-ros = self.callPackage ./slime-ros {};

 slime-wrapper = self.callPackage ./slime-wrapper {};

 smach = self.callPackage ./smach {};

 smach-msgs = self.callPackage ./smach-msgs {};

 smach-ros = self.callPackage ./smach-ros {};

 smach-viewer = self.callPackage ./smach-viewer {};

 smclib = self.callPackage ./smclib {};

 social-navigation-layers = self.callPackage ./social-navigation-layers {};

 socketcan-bridge = self.callPackage ./socketcan-bridge {};

 socketcan-interface = self.callPackage ./socketcan-interface {};

 soem = self.callPackage ./soem {};

 sophus = self.callPackage ./sophus {};

 sot-core = self.callPackage ./sot-core {};

 sot-dynamic-pinocchio = self.callPackage ./sot-dynamic-pinocchio {};

 sot-tools = self.callPackage ./sot-tools {};

 spacenav-node = self.callPackage ./spacenav-node {};

 sparse-bundle-adjustment = self.callPackage ./sparse-bundle-adjustment {};

 spatio-temporal-voxel-layer = self.callPackage ./spatio-temporal-voxel-layer {};

 speech-recognition-msgs = self.callPackage ./speech-recognition-msgs {};

 speed-scaling-interface = self.callPackage ./speed-scaling-interface {};

 speed-scaling-state-controller = self.callPackage ./speed-scaling-state-controller {};

 sr-hand-detector = self.callPackage ./sr-hand-detector {};

 srdfdom = self.callPackage ./srdfdom {};

 stag-ros = self.callPackage ./stag-ros {};

 stage = self.callPackage ./stage {};

 stage-ros = self.callPackage ./stage-ros {};

 static-tf = self.callPackage ./static-tf {};

 static-transform-mux = self.callPackage ./static-transform-mux {};

 statistics-msgs = self.callPackage ./statistics-msgs {};

 std-capabilities = self.callPackage ./std-capabilities {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 steering-functions = self.callPackage ./steering-functions {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 switchbot-ros = self.callPackage ./switchbot-ros {};

 swri-console = self.callPackage ./swri-console {};

 swri-console-util = self.callPackage ./swri-console-util {};

 swri-dbw-interface = self.callPackage ./swri-dbw-interface {};

 swri-geometry-util = self.callPackage ./swri-geometry-util {};

 swri-image-util = self.callPackage ./swri-image-util {};

 swri-math-util = self.callPackage ./swri-math-util {};

 swri-nodelet = self.callPackage ./swri-nodelet {};

 swri-opencv-util = self.callPackage ./swri-opencv-util {};

 swri-prefix-tools = self.callPackage ./swri-prefix-tools {};

 swri-profiler = self.callPackage ./swri-profiler {};

 swri-profiler-msgs = self.callPackage ./swri-profiler-msgs {};

 swri-profiler-tools = self.callPackage ./swri-profiler-tools {};

 swri-roscpp = self.callPackage ./swri-roscpp {};

 swri-rospy = self.callPackage ./swri-rospy {};

 swri-route-util = self.callPackage ./swri-route-util {};

 swri-serial-util = self.callPackage ./swri-serial-util {};

 swri-string-util = self.callPackage ./swri-string-util {};

 swri-system-util = self.callPackage ./swri-system-util {};

 swri-transform-util = self.callPackage ./swri-transform-util {};

 swri-yaml-util = self.callPackage ./swri-yaml-util {};

 tablet-socket-msgs = self.callPackage ./tablet-socket-msgs {};

 talos-description = self.callPackage ./talos-description {};

 talos-description-calibration = self.callPackage ./talos-description-calibration {};

 talos-description-inertial = self.callPackage ./talos-description-inertial {};

 task-compiler = self.callPackage ./task-compiler {};

 teb-local-planner = self.callPackage ./teb-local-planner {};

 teb-local-planner-tutorials = self.callPackage ./teb-local-planner-tutorials {};

 teleop-legged-robots = self.callPackage ./teleop-legged-robots {};

 teleop-tools = self.callPackage ./teleop-tools {};

 teleop-tools-msgs = self.callPackage ./teleop-tools-msgs {};

 teleop-twist-joy = self.callPackage ./teleop-twist-joy {};

 teleop-twist-keyboard = self.callPackage ./teleop-twist-keyboard {};

 tello-driver = self.callPackage ./tello-driver {};

 teraranger = self.callPackage ./teraranger {};

 teraranger-array = self.callPackage ./teraranger-array {};

 test-diagnostic-aggregator = self.callPackage ./test-diagnostic-aggregator {};

 test-mavros = self.callPackage ./test-mavros {};

 test-osm = self.callPackage ./test-osm {};

 tf = self.callPackage ./tf {};

 tf2 = self.callPackage ./tf2 {};

 tf2-2d = self.callPackage ./tf2-2d {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-geometry-msgs = self.callPackage ./tf2-geometry-msgs {};

 tf2-kdl = self.callPackage ./tf2-kdl {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-relay = self.callPackage ./tf2-relay {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-sensor-msgs = self.callPackage ./tf2-sensor-msgs {};

 tf2-server = self.callPackage ./tf2-server {};

 tf2-tools = self.callPackage ./tf2-tools {};

 tf2-urdf = self.callPackage ./tf2-urdf {};

 tf2-web-republisher = self.callPackage ./tf2-web-republisher {};

 tf-conversions = self.callPackage ./tf-conversions {};

 tf-remapper-cpp = self.callPackage ./tf-remapper-cpp {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 tile-map = self.callPackage ./tile-map {};

 timed-roslaunch = self.callPackage ./timed-roslaunch {};

 timestamp-tools = self.callPackage ./timestamp-tools {};

 topic-tools = self.callPackage ./topic-tools {};

 towr = self.callPackage ./towr {};

 towr-ros = self.callPackage ./towr-ros {};

 trac-ik = self.callPackage ./trac-ik {};

 trac-ik-examples = self.callPackage ./trac-ik-examples {};

 trac-ik-kinematics-plugin = self.callPackage ./trac-ik-kinematics-plugin {};

 trac-ik-lib = self.callPackage ./trac-ik-lib {};

 trac-ik-python = self.callPackage ./trac-ik-python {};

 tracetools = self.callPackage ./tracetools {};

 track-odometry = self.callPackage ./track-odometry {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 trajectory-tracker = self.callPackage ./trajectory-tracker {};

 trajectory-tracker-msgs = self.callPackage ./trajectory-tracker-msgs {};

 trajectory-tracker-rviz-plugins = self.callPackage ./trajectory-tracker-rviz-plugins {};

 transmission-interface = self.callPackage ./transmission-interface {};

 tsid = self.callPackage ./tsid {};

 tts = self.callPackage ./tts {};

 turtle-actionlib = self.callPackage ./turtle-actionlib {};

 turtle-teleop-multi-key = self.callPackage ./turtle-teleop-multi-key {};

 turtle-tf = self.callPackage ./turtle-tf {};

 turtle-tf2 = self.callPackage ./turtle-tf2 {};

 turtlebot3 = self.callPackage ./turtlebot3 {};

 turtlebot3-applications = self.callPackage ./turtlebot3-applications {};

 turtlebot3-applications-msgs = self.callPackage ./turtlebot3-applications-msgs {};

 turtlebot3-automatic-parking = self.callPackage ./turtlebot3-automatic-parking {};

 turtlebot3-automatic-parking-vision = self.callPackage ./turtlebot3-automatic-parking-vision {};

 turtlebot3-autorace = self.callPackage ./turtlebot3-autorace {};

 turtlebot3-autorace-camera = self.callPackage ./turtlebot3-autorace-camera {};

 turtlebot3-autorace-control = self.callPackage ./turtlebot3-autorace-control {};

 turtlebot3-autorace-core = self.callPackage ./turtlebot3-autorace-core {};

 turtlebot3-autorace-detect = self.callPackage ./turtlebot3-autorace-detect {};

 turtlebot3-bringup = self.callPackage ./turtlebot3-bringup {};

 turtlebot3-description = self.callPackage ./turtlebot3-description {};

 turtlebot3-example = self.callPackage ./turtlebot3-example {};

 turtlebot3-fake = self.callPackage ./turtlebot3-fake {};

 turtlebot3-follow-filter = self.callPackage ./turtlebot3-follow-filter {};

 turtlebot3-follower = self.callPackage ./turtlebot3-follower {};

 turtlebot3-gazebo = self.callPackage ./turtlebot3-gazebo {};

 turtlebot3-msgs = self.callPackage ./turtlebot3-msgs {};

 turtlebot3-navigation = self.callPackage ./turtlebot3-navigation {};

 turtlebot3-panorama = self.callPackage ./turtlebot3-panorama {};

 turtlebot3-simulations = self.callPackage ./turtlebot3-simulations {};

 turtlebot3-slam = self.callPackage ./turtlebot3-slam {};

 turtlebot3-teleop = self.callPackage ./turtlebot3-teleop {};

 turtlesim = self.callPackage ./turtlesim {};

 turtlesim-dash-tutorial = self.callPackage ./turtlesim-dash-tutorial {};

 tuw-airskin-msgs = self.callPackage ./tuw-airskin-msgs {};

 tuw-aruco = self.callPackage ./tuw-aruco {};

 tuw-checkerboard = self.callPackage ./tuw-checkerboard {};

 tuw-ellipses = self.callPackage ./tuw-ellipses {};

 tuw-gazebo-msgs = self.callPackage ./tuw-gazebo-msgs {};

 tuw-geometry = self.callPackage ./tuw-geometry {};

 tuw-geometry-msgs = self.callPackage ./tuw-geometry-msgs {};

 tuw-marker-detection = self.callPackage ./tuw-marker-detection {};

 tuw-marker-pose-estimation = self.callPackage ./tuw-marker-pose-estimation {};

 tuw-msgs = self.callPackage ./tuw-msgs {};

 tuw-multi-robot-msgs = self.callPackage ./tuw-multi-robot-msgs {};

 tuw-nav-msgs = self.callPackage ./tuw-nav-msgs {};

 tuw-object-msgs = self.callPackage ./tuw-object-msgs {};

 tuw-vehicle-msgs = self.callPackage ./tuw-vehicle-msgs {};

 tvm-vendor = self.callPackage ./tvm-vendor {};

 twist-controller = self.callPackage ./twist-controller {};

 twist-mux = self.callPackage ./twist-mux {};

 twist-mux-msgs = self.callPackage ./twist-mux-msgs {};

 twist-recovery = self.callPackage ./twist-recovery {};

 ubiquity-motor = self.callPackage ./ubiquity-motor {};

 ublox = self.callPackage ./ublox {};

 ublox-gps = self.callPackage ./ublox-gps {};

 ublox-msgs = self.callPackage ./ublox-msgs {};

 ublox-serialization = self.callPackage ./ublox-serialization {};

 ubnt-airos-tools = self.callPackage ./ubnt-airos-tools {};

 udp-com = self.callPackage ./udp-com {};

 ueye-cam = self.callPackage ./ueye-cam {};

 um6 = self.callPackage ./um6 {};

 um7 = self.callPackage ./um7 {};

 underwater-sensor-msgs = self.callPackage ./underwater-sensor-msgs {};

 underwater-vehicle-dynamics = self.callPackage ./underwater-vehicle-dynamics {};

 unique-id = self.callPackage ./unique-id {};

 unique-identifier = self.callPackage ./unique-identifier {};

 uos-common-urdf = self.callPackage ./uos-common-urdf {};

 uos-diffdrive-teleop = self.callPackage ./uos-diffdrive-teleop {};

 uos-freespace = self.callPackage ./uos-freespace {};

 uos-gazebo-worlds = self.callPackage ./uos-gazebo-worlds {};

 uos-maps = self.callPackage ./uos-maps {};

 uos-tools = self.callPackage ./uos-tools {};

 ur-client-library = self.callPackage ./ur-client-library {};

 ur-msgs = self.callPackage ./ur-msgs {};

 urdf = self.callPackage ./urdf {};

 urdf-geometry-parser = self.callPackage ./urdf-geometry-parser {};

 urdf-parser-plugin = self.callPackage ./urdf-parser-plugin {};

 urdf-sim-tutorial = self.callPackage ./urdf-sim-tutorial {};

 urdf-test = self.callPackage ./urdf-test {};

 urdf-tutorial = self.callPackage ./urdf-tutorial {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-c = self.callPackage ./urg-c {};

 urg-node = self.callPackage ./urg-node {};

 urg-stamped = self.callPackage ./urg-stamped {};

 usb-cam = self.callPackage ./usb-cam {};

 usb-cam-controllers = self.callPackage ./usb-cam-controllers {};

 usb-cam-hardware = self.callPackage ./usb-cam-hardware {};

 usb-cam-hardware-interface = self.callPackage ./usb-cam-hardware-interface {};

 usv-gazebo-plugins = self.callPackage ./usv-gazebo-plugins {};

 uuid-msgs = self.callPackage ./uuid-msgs {};

 uuv-assistants = self.callPackage ./uuv-assistants {};

 uuv-auv-control-allocator = self.callPackage ./uuv-auv-control-allocator {};

 uuv-control-cascaded-pid = self.callPackage ./uuv-control-cascaded-pid {};

 uuv-control-msgs = self.callPackage ./uuv-control-msgs {};

 uuv-control-utils = self.callPackage ./uuv-control-utils {};

 uuv-descriptions = self.callPackage ./uuv-descriptions {};

 uuv-gazebo = self.callPackage ./uuv-gazebo {};

 uuv-gazebo-plugins = self.callPackage ./uuv-gazebo-plugins {};

 uuv-gazebo-ros-plugins = self.callPackage ./uuv-gazebo-ros-plugins {};

 uuv-gazebo-ros-plugins-msgs = self.callPackage ./uuv-gazebo-ros-plugins-msgs {};

 uuv-gazebo-worlds = self.callPackage ./uuv-gazebo-worlds {};

 uuv-sensor-ros-plugins = self.callPackage ./uuv-sensor-ros-plugins {};

 uuv-sensor-ros-plugins-msgs = self.callPackage ./uuv-sensor-ros-plugins-msgs {};

 uuv-simulator = self.callPackage ./uuv-simulator {};

 uuv-teleop = self.callPackage ./uuv-teleop {};

 uuv-thruster-manager = self.callPackage ./uuv-thruster-manager {};

 uuv-trajectory-control = self.callPackage ./uuv-trajectory-control {};

 uuv-world-plugins = self.callPackage ./uuv-world-plugins {};

 uuv-world-ros-plugins = self.callPackage ./uuv-world-ros-plugins {};

 uuv-world-ros-plugins-msgs = self.callPackage ./uuv-world-ros-plugins-msgs {};

 uvc-camera = self.callPackage ./uvc-camera {};

 uwsim = self.callPackage ./uwsim {};

 uwsim-bullet = self.callPackage ./uwsim-bullet {};

 uwsim-osgbullet = self.callPackage ./uwsim-osgbullet {};

 uwsim-osgocean = self.callPackage ./uwsim-osgocean {};

 uwsim-osgworks = self.callPackage ./uwsim-osgworks {};

 vapor-master = self.callPackage ./vapor-master {};

 variant = self.callPackage ./variant {};

 variant-msgs = self.callPackage ./variant-msgs {};

 variant-topic-tools = self.callPackage ./variant-topic-tools {};

 vector-map-msgs = self.callPackage ./vector-map-msgs {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 velodyne = self.callPackage ./velodyne {};

 velodyne-description = self.callPackage ./velodyne-description {};

 velodyne-driver = self.callPackage ./velodyne-driver {};

 velodyne-gazebo-plugins = self.callPackage ./velodyne-gazebo-plugins {};

 velodyne-laserscan = self.callPackage ./velodyne-laserscan {};

 velodyne-msgs = self.callPackage ./velodyne-msgs {};

 velodyne-pointcloud = self.callPackage ./velodyne-pointcloud {};

 velodyne-simulator = self.callPackage ./velodyne-simulator {};

 vesc = self.callPackage ./vesc {};

 vesc-ackermann = self.callPackage ./vesc-ackermann {};

 vesc-driver = self.callPackage ./vesc-driver {};

 vesc-msgs = self.callPackage ./vesc-msgs {};

 video-stream-opencv = self.callPackage ./video-stream-opencv {};

 view-controller-msgs = self.callPackage ./view-controller-msgs {};

 virtual-force-publisher = self.callPackage ./virtual-force-publisher {};

 vision-msgs = self.callPackage ./vision-msgs {};

 vision-opencv = self.callPackage ./vision-opencv {};

 vision-visp = self.callPackage ./vision-visp {};

 visp-auto-tracker = self.callPackage ./visp-auto-tracker {};

 visp-bridge = self.callPackage ./visp-bridge {};

 visp-camera-calibration = self.callPackage ./visp-camera-calibration {};

 visp-hand2eye-calibration = self.callPackage ./visp-hand2eye-calibration {};

 visp-tracker = self.callPackage ./visp-tracker {};

 visualization-marker-tutorials = self.callPackage ./visualization-marker-tutorials {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 visualization-osg = self.callPackage ./visualization-osg {};

 visualization-tutorials = self.callPackage ./visualization-tutorials {};

 viz = self.callPackage ./viz {};

 vl53l1x = self.callPackage ./vl53l1x {};

 voice-text = self.callPackage ./voice-text {};

 volksbot-driver = self.callPackage ./volksbot-driver {};

 volta-base = self.callPackage ./volta-base {};

 volta-control = self.callPackage ./volta-control {};

 volta-description = self.callPackage ./volta-description {};

 volta-localization = self.callPackage ./volta-localization {};

 volta-msgs = self.callPackage ./volta-msgs {};

 volta-navigation = self.callPackage ./volta-navigation {};

 volta-rules = self.callPackage ./volta-rules {};

 volta-simulation = self.callPackage ./volta-simulation {};

 volta-teleoperator = self.callPackage ./volta-teleoperator {};

 voxel-grid = self.callPackage ./voxel-grid {};

 vrpn = self.callPackage ./vrpn {};

 vrpn-client-ros = self.callPackage ./vrpn-client-ros {};

 vrx-gazebo = self.callPackage ./vrx-gazebo {};

 wamv-description = self.callPackage ./wamv-description {};

 wamv-gazebo = self.callPackage ./wamv-gazebo {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 warthog-control = self.callPackage ./warthog-control {};

 warthog-description = self.callPackage ./warthog-description {};

 warthog-desktop = self.callPackage ./warthog-desktop {};

 warthog-gazebo = self.callPackage ./warthog-gazebo {};

 warthog-msgs = self.callPackage ./warthog-msgs {};

 warthog-simulator = self.callPackage ./warthog-simulator {};

 warthog-viz = self.callPackage ./warthog-viz {};

 wave-front-planner = self.callPackage ./wave-front-planner {};

 wave-gazebo = self.callPackage ./wave-gazebo {};

 wave-gazebo-plugins = self.callPackage ./wave-gazebo-plugins {};

 web-video-server = self.callPackage ./web-video-server {};

 webkit-dependency = self.callPackage ./webkit-dependency {};

 webots-ros = self.callPackage ./webots-ros {};

 webrtc = self.callPackage ./webrtc {};

 webrtc-ros = self.callPackage ./webrtc-ros {};

 wfov-camera-msgs = self.callPackage ./wfov-camera-msgs {};

 wge100-camera = self.callPackage ./wge100-camera {};

 wge100-camera-firmware = self.callPackage ./wge100-camera-firmware {};

 wge100-driver = self.callPackage ./wge100-driver {};

 wifi-ddwrt = self.callPackage ./wifi-ddwrt {};

 willow-maps = self.callPackage ./willow-maps {};

 wireless-msgs = self.callPackage ./wireless-msgs {};

 wireless-watcher = self.callPackage ./wireless-watcher {};

 ws281x = self.callPackage ./ws281x {};

 wu-ros-tools = self.callPackage ./wu-ros-tools {};

 xacro = self.callPackage ./xacro {};

 xmlrpcpp = self.callPackage ./xmlrpcpp {};

 xpp = self.callPackage ./xpp {};

 xpp-examples = self.callPackage ./xpp-examples {};

 xpp-hyq = self.callPackage ./xpp-hyq {};

 xpp-msgs = self.callPackage ./xpp-msgs {};

 xpp-quadrotor = self.callPackage ./xpp-quadrotor {};

 xpp-states = self.callPackage ./xpp-states {};

 xpp-vis = self.callPackage ./xpp-vis {};

 xsens-driver = self.callPackage ./xsens-driver {};

 xv-11-laser-driver = self.callPackage ./xv-11-laser-driver {};

 yocs-ar-marker-tracking = self.callPackage ./yocs-ar-marker-tracking {};

 yocs-ar-pair-approach = self.callPackage ./yocs-ar-pair-approach {};

 yocs-ar-pair-tracking = self.callPackage ./yocs-ar-pair-tracking {};

 yocs-cmd-vel-mux = self.callPackage ./yocs-cmd-vel-mux {};

 yocs-controllers = self.callPackage ./yocs-controllers {};

 yocs-diff-drive-pose-controller = self.callPackage ./yocs-diff-drive-pose-controller {};

 yocs-joyop = self.callPackage ./yocs-joyop {};

 yocs-keyop = self.callPackage ./yocs-keyop {};

 yocs-localization-manager = self.callPackage ./yocs-localization-manager {};

 yocs-math-toolkit = self.callPackage ./yocs-math-toolkit {};

 yocs-msgs = self.callPackage ./yocs-msgs {};

 yocs-navi-toolkit = self.callPackage ./yocs-navi-toolkit {};

 yocs-navigator = self.callPackage ./yocs-navigator {};

 yocs-rapps = self.callPackage ./yocs-rapps {};

 yocs-safety-controller = self.callPackage ./yocs-safety-controller {};

 yocs-velocity-smoother = self.callPackage ./yocs-velocity-smoother {};

 yocs-virtual-sensor = self.callPackage ./yocs-virtual-sensor {};

 yocs-waypoint-provider = self.callPackage ./yocs-waypoint-provider {};

 yocs-waypoints-navi = self.callPackage ./yocs-waypoints-navi {};

 yosemite-valley = self.callPackage ./yosemite-valley {};

 ypspur = self.callPackage ./ypspur {};

 ypspur-ros = self.callPackage ./ypspur-ros {};

 yujin-ocs = self.callPackage ./yujin-ocs {};

 zbar-ros = self.callPackage ./zbar-ros {};

 zeroconf-msgs = self.callPackage ./zeroconf-msgs {};

}
